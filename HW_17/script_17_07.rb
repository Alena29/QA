#==================================================================================================
# Script               = script_17_07.rb
#==================================================================================================
# Description:         Command line option         
#                      = A. Option: Wednesday morning John Smith was walking on the street.
#                      = B. Option: Monday morning Alex More was walking on the street.
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# require the gem "optparse'
require 'optparse'
# Assigning the string to the global variables after finding an option 
OptionParser.new do |opts|
opts.on("-a","--sentence") do
$a = ARGV[0].to_s
end
end.parse!
re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=ARGV.join(" ").match re
puts "Output: His name is: #{name}"







