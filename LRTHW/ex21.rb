def add(a, b)
  puts "Adding #{a} + #{b}"
  a + b
end

def subtract(a, b)
  puts "Subtracting #{a} - #{b}"
  a - b
end

def multiply(a, b)
  puts "Multiplying #{a} * #{b}"
  a * b
end

def divide(a, b)
  puts "Dividing #{a} / #{b}"
  a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(62, 12)
weight = multiply(100, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height #{height}, weight #{weight}, iq #{iq}"

puts "Here is a puzzle."

#50/2 = 25. 200 + 25 = 5000. 50-5000= -49500. 35 + -4950 = 4915. 
what = add(age, subtract(height, multiply(weight, divide(iq, 13))))

puts "That becomes: #{what}. Can you do it by hand?"

puts
puts "yes!"
