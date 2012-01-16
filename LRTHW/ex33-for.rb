number = []
iteration = 2
puts "Please enter the size of the array:"; youpickthenumber = gets.to_i

for i in (0..youpickthenumber)
   puts "i at the top equals #{i}"
   number.push(i)
end

for num in number
  puts num
end


