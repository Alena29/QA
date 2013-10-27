#==================================================================================================
# Script               = script_13_07.rb
#==================================================================================================
# Description          = A. Arguments (9): Wednesday morning John Smith was walking on the street.
#                      = B. Arguments (9): Monday morning Alex More was walking on the street.
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=ARGV.join(" ").match re
puts "Output: His name is: #{name}"







