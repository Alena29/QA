#==================================================================================================
# Script               = script_16_02.rb
#==================================================================================================
# Description          =  Count .txt files in your home directory
# Name                 = "Alena Furman"
# Email                = "alena.furman29@gmail.com"
#===================================================================================================
# RegEx to match files with .txt extension
files_txt = /(\w+\.(txt))/
list = []

# Conditional statement to determine OS (Windows)
if RUBY_PLATFORM =~ /32/ then 
%x'dir /s %HOMEDRIVE% > list.txt'
sleep(10)
# Reading the list of all the .txt files in the home directory
# Placing all matching files into array

file = File.read('list.txt')
file.scan(files_txt) do |all_match|
list << all_match
end

puts "Your Home Directory contains: #{list.size} files"

else
# Conditional statement branch for Mac
%x'cd $HOME; ls -la > list.txt'
sleep(10)

file = File.read('list.txt')
file.scan(files_txt) do |all_match|
list << all_match
end
puts "Your Home Directory contains: #{list.size} files"
end
