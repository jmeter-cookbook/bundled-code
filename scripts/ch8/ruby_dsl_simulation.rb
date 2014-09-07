require 'rubygems'
require 'ruby-jmeter'

test do
	cookies clear_each_iteration: false

	csv_data_set_config :filename => 'shoutbox-registration.txt'

	threads :count => 1 , :rampup => 1, :loops => 2 do

	  defaults :domain => 'evening-citadel-2263.herokuapp.com'
	  random_timer 1000, 2000

    transaction '01_shoutbox_home' do
      visit :name => 'Home', :url => '/' do
      end
    end

    transaction '02_shoutbox_signin' do
        submit :name => 'Login', :url => '/login',
        :fill_in => {
          :'user[name]' => '${user}',
          :'user[pass]' => '${pass}'
        } do
          visit :name => "home_redirect", :url => '/' do
            assert 'contains' => '${user}'
            assert 'contains' => 'logout'
          end
      end
    end

    transaction '03_logout' do
      visit :name => 'Logout', :url => '/logout' do
      end
      visit :name => 'home_redirect', :url => '/' do
        assert 'contains' => 'register'
      end
    end
  end

  view_results_tree

end.jmx(file: './ch8_ruby_dsl_simulation.jmx')
