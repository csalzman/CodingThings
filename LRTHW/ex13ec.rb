
one, two = ARGV

puts "This is the first variable: #{one}"
puts "This is the second variable: #{two}"

print "What else would you like to say?"

nothing = STDIN.gets.chomp() #need STDIN. because gets on its own tries to jam stuff into ARGV[0], which creates problems. 
puts "Here it is: %s" % nothing
