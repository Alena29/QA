#==========e=======================================================================================
# Script               = script_17_06.rb
#==================================================================================================
# Description          =  command line option finding summary of numbers
#                       A. 6 0ptions (-a 2 -b 4 -c 6 -d 8 -e 10 -f 12)
#                       B. 10 Options (-a 23 -b 15 -c 97 -d 45 -e 36 -f 1234 -g 523665 -h 45 -i 2971 -j 22145)
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
opts.on("-f","--sixth_number") do
$e = ARGV[0].to_f
end
opts.on("-g","--seventh_number") do
$e = ARGV[0].to_f
end
opts.on("-h","--eighth_number") do
$e = ARGV[0].to_f
end
opts.on("-i","--nineth_number") do
$e = ARGV[0].to_f
end
opts.on("-j","--tenth_number") do
$e = ARGV[0].to_f
end
end.parse!
arg_sum=0
ARGV.each do|arg|
arg_sum=arg.to_f+arg_sum
end
num=ARGV.length
sum=arg_sum/num
puts "Output:  The summary of the following numbers is #{sum}"