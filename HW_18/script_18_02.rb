#==================================================================================================
# Script               = script_18_02.rb
#==================================================================================================
# Description          =  Trollop; Command line option: "my favorite fruit is apple or banana"
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# require the gem 'trollop'
require 'trollop'
# Assigning the string to the variables after finding an option 
opts = Trollop::options do
opt:first,"first", :short => "-a", :type => :string
opt:second,"second", :short => "-b", :type => :string
end

#output
puts "My favorite fruit is #{opts[:first].chop} or #{opts[:second].chop}"