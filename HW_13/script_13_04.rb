#====================================================================
# Script               = script_13_04.rb
#====================================================================
# Description          = "Arguments (4): 66 166 202 14
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#====================================================================
ip = ""
ARGV.each do |a|
ip+=a
ip+='.'
end
ip=ip.chop
puts "My ip address is #{ip}"






