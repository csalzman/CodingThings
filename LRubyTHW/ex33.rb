#declares the i variable and the numbers variable
i = 0
numbers = []

#gets the size of the array and the way to increment it
puts "Please enter the size of the array:"; youpickthenumber = gets.to_i
puts "Please enter the increment: "; increment = gets.to_i

#while loop to add to the array based on the user-defined variables
while i < youpickthenumber
  puts "At the top i is #{i}"
  numbers.push(i)

  i += increment
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
  puts
end

#pauses after the while loop before printing it
gets.chomp()
puts "The numbers: "

for num in numbers
  puts num
end
