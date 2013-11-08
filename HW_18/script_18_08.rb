#==================================================================================================
# Script               = script_18_08.rb
#==================================================================================================
# Description          = Trollop; Command line options(4): -a Spring -b Summer -c Fall -d Winter
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# require the gem "trollop'
require 'trollop'
# Assigning the string to the global variables after finding an option 
opts = Trollop::options do
opt:first,"first", :short => "-a", :type => :string
opt:second,"second", :short => "-b", :type => :string
opt:third,"third", :short => "-c", :type => :string
opt:fourth,"fourth", :short => "-d", :type => :string
end
a = [opts[:first],opts[:second],opts[:third],opts[:fourth]]
puts "Here are sorted (alphabetically) words: #{a.sort.join(" ")}"






