require 'rubygems'
require 'ruby-jmeter'

test do
	cookies clear_each_iteration: false

	csv_data_set_config :filename => 'users.csv'

	# threads count: 1 , rampup: 1, duration: 5, continue_forever: true do
	threads count: 100 do #, rampup: 1, duration: 60, continue_forever: true do

	  # defaults domain: 'fast-stream-1018.herokuapp.com'
	  defaults :domain => 'jmeterbook-berinle.rhcloud.com'
	  random_timer 1000, 2000

	  visit name: 'Home', url: '/'
	  visit name: 'Admin or User Resource', url: '/secure/adminOrUser'
	  submit name: 'Login submit', url: '/j_spring_security_check',
	  	fill_in: {
	  		j_username: '${user}',
	  		j_password: '${password}'
	  	}   
	  visit name: 'User secure resource', url: '/secure/user' do
	  	assert 'contains' => '${user}'
	  end	
	  visit name: 'Logout', url: '/j_spring_security_logout'
	end
#end.run(path: '/Users/berinle/devtools/apache-jmeter-2.9/bin/', gui: false)
end.jmx(file: './rhc_1.jmx')
#end.grid('84LyVn9dGC1qYWsBouEH')
#end.flood('84LyVn9dGC1qYWsBouEH')