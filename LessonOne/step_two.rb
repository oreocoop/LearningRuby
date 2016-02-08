##
#
# Now we read it a line at a time.
#
##

puts "About to open file"
file = File.open("unsorted.txt", "r+")
puts "about to read file"

#puts "==="+file.eof?+"==="
while ( !file.eof? ) do
  data = file.readline()
  puts "single line of data is"
  puts "--"+data+"--"
end


puts "about to close file"
file.close()
puts "End of program"
