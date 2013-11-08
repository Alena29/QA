#==========e=======================================================================================
# Script               = script_17_05.rb
#==================================================================================================
# Description          =  command line option: "Average score" (-a 35 -b 45 -c 61 -d 59 -e 73)
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# require the gem "optparse'
require 'optparse'
# Assigning the integer to the global variables after finding an option 
OptionParser.new do |opts|
opts.on("-a","--first_number") do
$a = ARGV[0].to_f
end
opts.on("-b","--second_number") do
$b = ARGV[0].to_f
end
opts.on("-c","--third_number") do
$c = ARGV[0].to_f
end
opts.on("-d","--fourth_number") do
$d = ARGV[0].to_f
end
opts.on("-e","--fifth_number") do
$e = ARGV[0].to_f
end
end.parse!
# Finding summary 
f = ($a+$b+$c+$d+$e)/5
puts "Average score of (35, 45, 61, 59, 73) is #{f}"