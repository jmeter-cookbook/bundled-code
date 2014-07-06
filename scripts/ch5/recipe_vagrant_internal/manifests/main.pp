include java
#include apt
#include stdlib

package { ["vim",
	           "curl",
	           "git-core",
	           "zsh"]:
	  ensure => present
	  }

exec {
		"setup_jmeter":
		command => "curl -L http://archive.apache.org/dist/jmeter/binaries/apache-jmeter-2.11.tgz | tar zx && mv /usr/local/apache-jmeter-2.11 /usr/local/jmeter-2.11",
		creates => "/usr/local/jmeter-2.11",		
		timeout => 0,
		cwd => "/usr/local",
		user => "root",
		path => "/usr/bin/:/bin",
		require => Package[ "curl" ]
	}
