##
#
# changed my mind. lets make it an integer instead
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
puts "End of program"
