#Fibonacci's sequence

puts "\nDisplays the Fibonacci sequence up to a certain number. When should it stop?"
prompt = "> "
print prompt
entries = gets.chomp().to_i

#sets first three numbers
first = 0
second = 1
iterations = 1

#displays beginning part of sequence
puts first, second

#loops through rest of specified entries
while second < entries + 1
	iterations = iterations + 1
	number = first + second
	if number <= entries
		puts number
	else
		puts "#{iterations} numbers in the sequence."
	end
	first = second
	second = number
end