##
#
# Opens a file and dumps its contents to the screen
#
##

puts "About to open file"
file = File.open("unsorted.txt", "r+")
puts "about to read file"
data = file.read()
puts "about to close file"
file.close()
puts "about to print file"
puts data
puts "End of program"
