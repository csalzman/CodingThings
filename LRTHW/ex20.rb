input_file = ARGV[0]

#function to read the file passed to it as an argument
def print_all(f)
  puts f.read()
end

#"rewids the thing it's reading. Not sure if this is needed
def rewind(f)
  f.seek(0, IO::SEEK_SET) #seeks to a position in the file, can be a negative number or a positive. Just jumps to that character number
end

#function to show the line number and reads out that specific line
def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline()}"
end

#declares a variable that opens the file supplied as the first argument
current_file = File.open(input_file)

puts "First let's print the whole file:"
puts

#runs the print_all function with current_file. In this case it's the file supplied as the argument when you run the script. opens it and reads it
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

#jumps to the start of the file
rewind(current_file)

puts "Let's print three lines:"

#sets current line to 1 and prints the first line
current_line = 1
print_a_line(current_line, current_file)

#goes to the next line and prints that
current_line += 2
print_a_line(current_line, current_file)

#goes to the next line and prints that
current_line -= 1
print_a_line(current_line, current_file)


