def green_room(keys)
  if keys.include? "Yellow"
    puts "You open the yellow door"
  else
    puts "you're weird."
  end
end


def yellow_room(keys, player)
  puts "You enter the room to find a grue!"
  puts "Hit enter to fight!"
  gets.chomp
  grue_fight(player)
  puts "You enter the Yellow room.\nWould you like to get the yellow key?"
  prompt; get_key = gets.chomp

  if get_key == "Y"
    keys.push("Yellow")
  else
    puts "Really?"
  end
end

def blue_room(keys, player)
  puts "You pick up the green key."
  keys.push("Green")
  puts "but a grue appears!"
  grue_fight(player)
  puts "whew!"
end


#Checks keys
def keyring(keys)
  puts "Check keys?"; check = gets.chomp

  if check == "Y"
    puts keys
  else
    puts "Okay"
  end
end

