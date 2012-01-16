#Fibonacci's sequence

puts "Displays the Fibonacci sequence up to a certain number. \n\nWhen should I stop?"
prompt = "> "
print prompt
entries = gets.chomp().to_i

#sets first three numbers
first = 1
second = 1
number = 0

#displays beginning part of sequence
puts number, first, second

#loops through rest of specified entries
while second < entries + 1
	number = first + second
	if number <= entries
		puts number
	else
		puts "That's it."
	end
	first = second
	second = number
end