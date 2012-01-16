print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp()
height.chomp("abc")
print "How much do you weigh? "
weight = gets.chomp()

puts "So, you're #{age} old, #{height} tall and %s heavy." % weight
