include stdlib
include apt
include java

package { ["vim",
	           "curl",
	           "git-core",
	           "zsh"]:
	  ensure => present
	  }

exec {
		"setup_jmeter":
		command => "curl -L http://archive.apache.org/dist/jmeter/binaries/apache-jmeter-2.11.tgz | tar zx && mv /usr/local/apache-jmeter-2.11 /usr/local/jmeter",
		creates => "/usr/local/jmeter",		
		timeout => 0,
		cwd => "/usr/local",
		user => "root",
		path => "/usr/bin/:/bin",
		require => Package[ "curl" ]
	}	