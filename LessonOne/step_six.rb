##
#
# lets sort that puppy
# you should be able to guess what the ! after the sort is doing in this case - remember step 3
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
puts "End of program"
