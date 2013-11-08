#==================================================================================================
# Script               = script_18_04.rb
#==================================================================================================
# Description          =  Trollop; Command line option: "My IP Address by octet options" (-a 66 -b 166 -c 202 -d 14)
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# require the gem "trollop'
require 'trollop'
# Assigning the integer to the global variables after finding an option 
opts = Trollop::options do
opt:first,"first", :short => "-a", :type => :int
opt:second,"second", :short => "-b", :type => :int
opt:third,"third", :short => "-c", :type => :int
opt:fourth,"fourth", :short => "-d", :type => :int
end

#output
puts "My IP Address is: #{opts[:first]}.#{opts[:second]}.#{opts[:third]}.#{opts[:second]}"



