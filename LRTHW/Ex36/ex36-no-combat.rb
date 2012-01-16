#!/usr/bin/env ruby

#Each room will need an array of rooms that go off of it
#Todo later is to figure out how movement between rooms works

#Placeholders for the keys array and player information. Need these to work globally and be updatedable throughout the game

$keys = ["blue"]

#Displays default prompt
def prompt
  print "> "
end

#Basic choice tree
def choices
  puts "\nWhat would you like to do? Look, Status, Keyring, Move?\n"
  prompt; todo = gets.chomp

  #Checks room and then starts choices up again
  if todo == "Look"
    check_room
    choices
  #Checks keyring and then starts choices up again
  elsif todo == "Keyring"
    keyring
    choices
  #Displays which room and then moves on to the movement part of the room
  elsif todo == "Move"
    puts "Which Room?\n"
  #Triggers if something is mistyped and starts up choices again
  else
    puts "I don't understand. Try again, please."
  end
end

#Room check function
def check_room
  puts "checking room"
end

#keyring check
def keyring
  puts "checking keyring"
  $keys.each {|x| print x + " "}
end

#Takes in all directions from the room's 'room' array. Displays them and gets a choice from the player
def move_where(rooms)
  print "|     "; rooms.each { |room| print room + "     |     "}
  puts
  prompt; direction = gets.chomp

  #Checks for an exact match and asks for it again and again
  while rooms.include?(direction) == false
    puts "I don't understand, let's try again."
    prompt; direction = gets.chomp
  end
  #Once a room match is found, it returns the direction
  return direction
end

#Takes returned value from move_where and Will move you from one room to the next
def move(direction)
  puts "\nMoving to the #{direction}.\n\n"
  eval direction.downcase.gsub(" ", "_")
end

#Start room
def start
  puts "\nYou are inside a nondescript room of a ruined castle. To the West is the entryway of the castle. To the South a doorway opens into a field, the moon hovering above it. To the East, a Prison Guard room, and to the North a dark hallway that leads to the Dungeon."
  choices
  rooms = ["Entryway", "Guard Room", "Dungeon", "Outside"]
  direction = move_where(rooms)
  move(direction)
end

def entryway
  puts "You head to the Entryway of the castle. A cavernous door to the North is dimly lit but seems to be the Throne Room. To the South is an exit filled with rubble. There's something moving over there. To the East is where you started."
  choices
  rooms = ["Throne Room", "Blocked Exit", "Start"]
  direction = move_where(rooms)
  move(direction)
end

def guard_room
  puts "You are in a tiny guard room. There's a hooded figure slumped over the desk. The room is sparse. To the West lies the way you came in."
  choices
  rooms = ["Start"]
  direction = move_where(rooms)
  move(direction)
end

def dungeon
  puts "You manevour through the narrow hallway and enter into a Dungeon. The ground is damp and the air is freezing. There are three doors in front of you. Each to a jail cell. The hallway behind you leads to where you started."
  choices
  rooms = ["Jail Cell 1", "Jail Cell 2", "Jail Cell 3", "Start"]
  direction = move_where(rooms)
  move(direction)
end

def jail_cell_1
  #door check. needs key 1 if fails you see a message about what key you need and go back to dungeon
  puts "You enter the jail cell. There's a skeleton and a shield laying in the room. The exit will take you back to the Dungeon."
  puts "You try the door and it doesn't budge. A small inscription on the handle says, '1.'"  
  choices
  rooms = ["Dungeon"]
  direction = move_where(rooms)
  move(direction)
end


def jail_cell_2
  #door check need key 2. if fails you see a message about what key needed and go back to the dungeon
  #check for grue dead or alive
  #if grue is alive
  puts "You enter the jail cell and find a Grue!"
  #combat
  #else grue is dead
  puts "On the fair wall is the number 31 scrawled in blood. The Grue's body lays in shambles on the ground. The exit back to the dungeon is behind you."
  choices
  rooms = ["Dungeon"]
  direction = move_where(rooms)
  move(direction)
end

def jail_cell_3
  puts "You enter the Jail cell. There's not much in here except for a shiny piece of metal in the corner. The door behind you leads back to the Dungeon."
  #Get key  $keys.push("red")
  choices
  rooms = ["Dungeon"]
  direction = move_where(rooms)
  move(direction)
end

def throne_room
  #check for sword, display message if need be. Check for throne moved or not.
  puts "You enter the Throne Room. It's deathly quiet. An imposing throne is before you, taking up most of the wall. Laying against the throne is a sword. Behind you is the Entryway."
  #get the sword and put it in inventory
  #move throne
  puts "You move the throne and see the numbers, 13, etched into the ground."
  choices
  rooms = ["Entryway"]
  direction = move_where(rooms)
  move(direction)
end

def blocked_exit
  puts "You head towards the rubble and the hulking figure. It doesn't see you yet. To your back is the entryway"
  #fight the monster or not
  puts "You kill it! On the wall is a note hastily written. 'Low to high'"
  choices
  rooms = ["Entryway"]
  direction = move_where(rooms)
  move(direction)
end

def outside
  #check for monster alive or dead
  puts "You move outside. The air is crisp and the stars are out. There's a large monster in front of you. He looks surprised to see you. You could probably run back behind you if you wanted to."
  choices
  #if monster is alive
  rooms = ["Start", "Clearing"]
  #if monster is dead Start and Clearing
  direction = move_where(rooms)
  move(direction)
end

def clearing
  puts "You are in a clearing. There's a chest there with a combination lock. Would you like to enter the combination?"
  #enter combination. If right end game, if wrong continue
  end_game("You did it! Congrats!")
  choices
  rooms = []
  direction = move_where(rooms)
  move(direction)
end

def end_game(message)
  puts message
  Process.exit
end


#Starts game in start room
start


