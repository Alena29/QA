#=====================================================================================
# Script               = script_13_06.rb
#=====================================================================================
# Description          = A. Arguments (6): 2 4 6 8 10 12 
#                      = B. Arguments (10): 23 15 97 45 365 1234 523665 45 2971 22145
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#======================================================================================
arg_sum=0
ARGV.each do|arg|
arg_sum=arg.to_f+arg_sum
end
num=ARGV.length
sum=arg_sum/num
puts "Output:  The summary of the following numbers #{ARGV.join(", ")} is #{sum}"







