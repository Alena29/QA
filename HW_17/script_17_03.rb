#==================================================================================================
# Script               = script_17_03.rb
#==================================================================================================
# Description          =  command line option "dividing 100 by 10"
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# require the gem "optparse'
require 'optparse'
# Assigning the integer to the global variables after finding an option 
OptionParser.new do |opts|
opts.on("-f","--first_number") do
$a = ARGV[0].to_i
end
opts.on("-s","--second_number") do
$b = ARGV[0].to_i
end
end.parse!
$c = $a/$b
puts "When I divide #{$a} by #{$b} I always have #{$c}!"