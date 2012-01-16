people = 100
cars = 122
buses = 40

if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if buses > cars
  puts "That's too many buses."
elsif buses < cars
  puts "Maybe we could take the buses?"
else
  puts "We still can't decide."
end

if people > buses
  puts "Alright, let's just take the buses."
else
  puts "Fine, let's stay home then."
end

#if statement looks to see if people, buses, and cars are all the same number
if people == buses and buses == cars
  puts "We can literally do whatever"
#elsif statement looks to see if there are more buses and cars than people
elsif people < buses and people < cars
  puts "We are waaay over resourced."
#elsif looks to see if people outnumber buses and cars
elsif people > buses and people > cars
  puts "We should carpool."
#else displays if none of the above conditions are met as TRUE
else
  puts "This is just too confusing."
end

#if runs if a statement is TRUE. Elsif is checked if the IF statement is FALSE. If the Elsif statement is TRUE, the block of code runs beneath it and no others in the larger IF statement. Else runs if all other statements in the block are FALSE.
