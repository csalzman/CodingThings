#define function with the arguments of cheese count and box count
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "you have #{cheese_count} cheeses!" #takes the argument from cheese_count and displays it
  puts "you have #{boxes_of_crackers} boxes" #takes the boxes_of_crackers argument and displays it
  puts "Man that's enough for a party!"
  puts "Get a blanket."
  puts
end


puts "We can just give the function numbers directly:"
#calls the cheese_and_crackers function with the arguments 20 and 30 for cheese_count and boxes_of_crackers respectively
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
#uses the newly defined variables amount_of_cheese and amount_of_crackers as arguments when we call cheese_and_crackers
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
#does some simple math in the argument places for the function cheese_and_crackers
cheese_and_crackers(10+20, 5+6)

puts"And we can combine the two, variables and math:"
#again, does some simple math when we state the arguments, we could even combine a few variables if need be here
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
