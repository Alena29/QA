#==================================================================================================
# Script               = script_17_04.rb
#==================================================================================================
# Description          =  command line option: "My IP Address by octet options" (-a 66 -b 166 -c 202 -d 14)
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# require the gem "optparse'
require 'optparse'
# Assigning the integer to the global variables after finding an option 
OptionParser.new do |opts|
opts.on("-a","--first_octet") do
$a = ARGV[0].to_i
end
opts.on("-b","--second_octet") do
$b = ARGV[0].to_i
end
opts.on("-c","--third_octet") do
$c = ARGV[0].to_i
end
opts.on("-d","--fourth_octet") do
$d = ARGV[0].to_i
end
end.parse!
puts "My IP Address is: #{$a}.#{$b}.#{$c}.#{$d}"