require 'rubygems'
require 'ruby-jmeter'

test do
  threads count: 10 do
    visit name: 'Google Search', url: 'http://google.com'
  end
end.grid('84LyVn9dGC1qYWsBouEH')
#end.run(
#  path: '/Users/berinle/devtools/apache-jmeter-2.9/bin/',
#  file: 'hit_google.jmx',
#  log: 'jmeter.log',
#  jtl: 'results.jtl')
