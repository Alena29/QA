#==================================================================================================
# Script               = script_14_01.rb
#==================================================================================================
# Description          = Retrieving Mac address from your computer; Argument(1): ipv6_address
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# platform bitness verification control statement and redirecting 'ipconfig' output into a text file 
if RUBY_PLATFORM =~ /32/ then
%x'ipconfig/all > ip.txt' 
else
%x'ipconfig > ip.txt'
end

# Input Argument Variable
re = ARGV[0]

# Conditional statement if-else assigning appropriate regex to the argument
if re == 'mac_address' then 
re = /\b([0-9a-fA-F]{2}(-|:)){5}[0-9a-fA-F]{2}\b/
elsif re == 'ipv4_address' then
re = /\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/
elsif re == 'ipv6_address' then
re = /[\dA-Fa-f]{1,4}(:[\dA-Fa-f]{1,4})*::([\dA-Fa-f]{1,4}(:[\dA-Fa-f]{1,4})*)?%\d{2}/
else
re = /\w+/
end

# reading 'ipconfig' output from the text file
file = File.read('ip.txt')
# matching text with the regex
match = file.match re
puts "match result: #{match}"

