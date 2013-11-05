#==================================================================================================
# Script               = script_16_01.rb
#==================================================================================================
# Description          =  Count all the files in your home directory
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# RegEx to match files with arbitrary extension
files_all = /(\w+\.\w{2,3})/
list = []

# Conditional statement to determine OS (Windows)
if RUBY_PLATFORM =~ /32/ then 
%x'dir /s %HOMEDRIVE% > list.txt'
sleep(10)
# Reading the list of all the files in the home directory
# Placing all matching files into array

file = File.read('list.txt')
file.scan(files_all) do |all_match|
list << all_match
end

puts "Your Home Directory contains: #{list.size} files"

else
# Conditional statement branch for Mac
%x'cd $HOME; ls -la > list.txt'
sleep(10)

file = File.read('list.txt')
file.scan(files_all) do |all_match|
list << all_match
end
puts "Your Home Directory contains: #{list.size} files"
end
