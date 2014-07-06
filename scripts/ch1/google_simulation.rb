require 'rubygems'
require 'ruby-jmeter'

test do
  threads count: 10 do
    visit name: 'Google Search', url: 'http://google.com'
  end
end.jmx(
 file: './google_simulation.jmx')
