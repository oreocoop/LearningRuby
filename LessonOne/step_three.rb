##
#
# Create an array and PUSH each line into the array as an element with STRIP to get rid of the newline
# ask me about the ! after the .strip
##

puts "About to open file"
file = File.open("unsorted.txt", "r+")
puts "about to read file"

lines = Array.new()

#puts "==="+file.eof?+"==="
while ( !file.eof? ) do
  data = file.readline()
  data.strip!()
  puts "single line of data is"
  puts "--"+data+"--"
  lines.push(data)
end


puts "about to close file"
file.close()
puts "about to print array"
puts lines
puts "End of program"
