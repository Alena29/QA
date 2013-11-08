#==================================================================================================
# Script               = script_17_08.rb
#==================================================================================================
# Description          = Command line options(4): -a Spring -b Summer -c Fall -d Winter
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# require the gem "optparse'
require 'optparse'
# Assigning the string to the global variables after finding an option 
OptionParser.new do |opts|
opts.on("-a","--first_season") do
$a = ARGV[0].to_s
end
opts.on("-b","--second_season") do
$b = ARGV[0].to_s
end
opts.on("-c","--third_season") do
$c = ARGV[0].to_s
end
opts.on("-d","--fourth_season") do
$d = ARGV[0].to_s
end
end.parse!
puts "Here are sorted (alphabetically) words: #{ARGV.sort.join(" ")}"






