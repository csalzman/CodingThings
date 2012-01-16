k = 10 #defining the number of types of people
x = "There are #{k} types of people." #defining x as a string with a 

#building some strings
bin = "binary" 
do_not = "don't" 
y = "Those who know #{bin} and those who #{do_not}."

#displaying some strings
puts x
puts y
puts "I said: #{x}."
puts "I also said: '#{y}'."

#defining the punchline
hilarious = 7 + 5 < 4
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

#displaying the punchline
puts joke_evaluation

#Defining to more strings to be joined later
w = "This is the left side of..."
e = "a string with a right side."

#Displaying the strings. Combine them with the + sign which adds them. Putting a - sign gives an "updefined method" error
puts w + e
