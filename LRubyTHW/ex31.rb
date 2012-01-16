def prompt
  print "> "
end

puts "You enter a dark room with two doors. Do you go through door #1 or door #2?"

prompt; door = gets.chomp

if door == "1"
  puts "There is a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  prompt; bear = gets.chomp

  if bear == "1"
    puts "The bear eats your face off. Good job!"
  elsif bear == "2"
    puts "The bear eats your legs off. Good job!"
  else
    puts "Well, doing #{bear} is probably better. Bear runs away."
    puts "Do you want to take the cake? Y/N?"

    prompt; cake = gets.chomp

    if cake == "Y"
      puts "You reach to take the cake and the bear comes back! You are eaten!"
    elsif cake == "N"
      puts "Wisely, you wait for the bear to return. He does not."
      puts "Take the cake and eat it? Y/N"

      prompt; cake2 = gets.chomp

      if cake2 == "Y"
        puts "You take the cake and eat it. Congrats, the game is won!"
      elsif cake2 == "N"
        puts "Secret ending! The cake wakes up and turns into a princess! Congrats the game is extra won!"
      else
        puts "Goodness, just make a decision. Want to know what? Nevermind, the game is over, you die."
      end 
    else
      puts "The bear comes back and eats you for your insolence."
    end
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  prompt; insanity = gets.chomp

  if insanity == "1" or insanity == "2"
    puts "Your body survives powered by a mind of jello. Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck. Good job!"
  end

else
  puts "You stumble around and fall on a knife and die. Good job!"
end
