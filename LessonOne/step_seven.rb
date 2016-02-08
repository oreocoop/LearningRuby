##
#
# lets dump the array to a file
#
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
  if ( Float(data) rescue false ) then
    lines.push(Integer(data))
  end
end


puts "about to close file"
file.close()
puts "about to print array"
puts lines
puts "about to sort array"
lines.sort!()
puts "about to print sorted array"
puts lines

puts "abougt to open new file"
newFile = File.open("sorted.txt","w")
puts "about to write to file"
newFile.write(lines)
puts "about to close new file"
newFile.close
puts "End of program"
