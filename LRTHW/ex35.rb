def prompt()
  print "> "
end

def gold_room()
  puts "This room is full of gold. How much do you take?"

  prompt; how_much = gets.to_i()
  if how_much <= 10
    dead("You moved a bear, and this is all you take? You're done.")
  elsif how_much > 10 and how_much < 50
    puts "Nice, you're not greedy, you win!"
    Process.exit(0)
  else
    dead("You greedy bastard! While scooping up gold the bear comes in and eats you!")
  end
end

def bear_room()
  puts "There is a bear here. \nThe bear has a bunch of honey.\nThe fat bear is in front of another door.\nHow are you going to move the bear?"
  bear_moved = false

  while true
    prompt; next_move = gets.chomp

    if next_move == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif next_move == "taunt bear" and not bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif next_move == "taunt bear" and bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif next_move == "open door" and bear_moved
      gold_room()
    else
      puts "I got no idea what that means."
    end
  end
end

def cthulu_room()
  puts "Here you see the great evil Cthulu.\nHe, it, whatever stars at you and you go insanse.\nDo you flee for your life or eat your head?"

  prompt; next_move = gets.chomp

  if next_move.include? "flee"
    start()
  elsif next_move.include? "head"
    dead("Well that was tasty!")
  else
    cthulu_room()
  end
  
end

def dead(why)
  puts "#{why} Good Job!"
  puts "Try again?"; prompt; try_again = gets.chomp
  if try_again.include? "Y" 
    start()
  else
    Process.exit(0)
  end
end

def start()
  puts "You are in a dark room.\nThere is a door to your right and left.\nWhich one do you take?"

  prompt; next_move = gets.chomp

  if next_move == "left"
    bear_room()
  elsif next_move == "right"
    cthulu_room()
  else
    dead("You stumble around the room until you starve.")
  end
end

start()
