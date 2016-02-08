##
#
# exact same result as the previous one, but its stripped and short cutted and parameteritized
# I'm sure this is sloppy ruby, but its my first day! :)
##

unsortedFileName = "unsorted.txt"
unsortedReadMode = "r+"
sortedFileName = "sorted.txt"
sortedWriteMode = "w"

lines = Array.new

File.open(unsortedFileName, unsortedReadMode) { |file|
  while ( !file.eof? ) do
    data = file.readline.strip
    if ( Float(data) rescue false ) then
      lines.push(Integer(data))
    end
  end
}

## why couldn't i do another block on the open?

newFile = File.open(sortedFileName, sortedWriteMode)
lines.sort!.each { |value| newFile.write(String(value)+"\n") }
newFile.close

