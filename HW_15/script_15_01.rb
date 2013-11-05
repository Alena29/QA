#==================================================================================================
# Script               = script_15_01.rb
#==================================================================================================
# Description          = Retrieving Subnet Mask from your computer; Argument(1): subnet_mask
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# platform bitness verification control statement and redirecting 'ipconfig' output into a text file 
if RUBY_PLATFORM =~ /32/ then
%x'ipconfig/all > ip.txt' 
else
%x'ifconfig > ip.txt'
end

# Input Argument Variable
re = ARGV[0]

# Conditional statement if-else assigning appropriate regex to the argument
if re == 'subnet_mask' then 
re = /\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/
else
re = /\w+/
end

# reading 'ipconfig' output from the text file
file = File.read('ip.txt')
# matching text with the regex
match = file.scan(re)
puts "Subnet mask: #{match[1]}"

