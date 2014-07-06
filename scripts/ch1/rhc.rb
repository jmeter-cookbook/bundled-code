require 'rubygems'
require 'ruby-jmeter'

test do
	cookies clear_each_iteration: false

	threads count: 1 , loops: 1 do #rampup: 1, duration: 1 	
	  visit name: 'Home', url: 'http://fast-stream-1018.herokuapp.com/'
	  visit name: 'Admin or User Resource', url: 'http://fast-stream-1018.herokuapp.com/secure/adminOrUser'
	  submit name: 'Login submit', url: 'http://fast-stream-1018.herokuapp.com/j_spring_security_check',
	  	fill_in: {
	  		j_username: 'user1',
	  		j_password: 'password'
	  	}	  
	  visit name: 'User secure resource', url: 'http://fast-stream-1018.herokuapp.com/secure/user'
	  visit name: 'Logout', url: 'http://fast-stream-1018.herokuapp.com/j_spring_security_logout'
	end
#end.run(path: '/Users/berinle/devtools/apache-jmeter-2.9/bin/', gui: true)
end.jmx(file: './rhc.jmx')
#end.grid('84LyVn9dGC1qYWsBouEH')