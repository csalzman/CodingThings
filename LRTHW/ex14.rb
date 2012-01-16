user = ARGV.first
prompt = '- '

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts "Where are you right now?"
print prompt
creepy = STDIN.gets.chomp()

puts <<ANYTHING
Alright, so you said #{likes} about liking me. 
You live in #{lives}. Not sure where that is.
And you have a #{computer}. Nice. 
Oh, and you're sitting at #{creepy}
ANYTHING


