#==================================================================================================
# Script               = script_18_03.rb
#==================================================================================================
# Description          =  Trollop; Command line option "dividing 100 by 10"
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# require the gem "trollop'
require 'trollop'
# Assigning the integer to the global variables after finding an option 
opts = Trollop::options do
opt:first,"first", :short => "-a", :type => :int
opt:second,"second", :short => "-b", :type => :int
end

#output
puts "When I am dividing #{opts[:first]} by #{opts[:second]} I always have #{opts[:first]/opts[:second]}!"



