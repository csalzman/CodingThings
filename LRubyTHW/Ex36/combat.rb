player_hp = [1,1,1,1,1,1]

#Function for combat
def monster(monster, player_hp, player_str)
  #Monster Look up table
  case monster
  when "Grue"
    monster_hp = 6
    monster_str = 2
  when "Large Monster"
    monster_hp = 8
    monster_str = 4
  when "Small Monster"
    monster_hp = 5
    monster_str = 2
  else
    puts "That's no monster at all!"
  end

  #Combat ends when someone is dead
  while not(player_hp.empty?) and monster_hp > 0
    m_hit = Random.rand(monster_str)
    puts "#{monster} hits for #{m_hit} hp"
    player_hp.pop(m_hit)
    puts "You have %s hp.\n\n" % player_hp.reduce(:+)
    check_hp(monster_hp, player_hp)
    puts "Now you."
    p_hit = Random.rand(player_str)
    puts "You hit for #{p_hit}"
    monster_hp = monster_hp - p_hit
    puts "#{monster} has #{monster_hp} hp."
  end
end

#checks HP for death sequence
def check_hp(monster_hp, player_hp)
  if monster_hp <= 0
    puts "you killed 'em"
  end
  if player_hp.empty?
    died("Oh No!")
  end
end

#prints out death message
def died(message)
  puts "#{message} You are teh death!"
  puts "Hit enter to start over."
  gets.chomp()
end

monster("Grue", player_hp, 3)
