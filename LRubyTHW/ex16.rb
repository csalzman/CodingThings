filename = ARGV[0]
script = $0
puts script

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print"? "
STDIN.gets

puts "Opening the file..."
#puts "File is #{File.size(filename)} characters long."
target = File.open(filename, 'w')
#puts "File is #{File.size(filename)} characters long."

#puts "Truncating the file. Goodbye!"
#File.truncate(filename, 0)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

puts "And finally, we close it."
target.close()
