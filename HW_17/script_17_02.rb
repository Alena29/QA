#==================================================================================================
# Script               = script_17_02.rb
#==================================================================================================
# Description          =  command line option "my favorite fruits are apple and banana"
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# require the gem "optparse'
require 'optparse'
# Assigning the string to the global variables after finding an option 
OptionParser.new do |opts|
opts.on("-f","--first_fruit") do
$a = ARGV[0]
end
opts.on("-s","--second_fruit") do
$b = ARGV[0]
end
end.parse!
puts "My favorite fruits are: #{$a.to_s.chop} and #{$b.to_s.chop}"