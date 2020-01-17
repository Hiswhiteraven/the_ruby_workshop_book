# First attempt at create die roll
<<EOC
puts "Rolling a 5 sided die!"
five_sided_die = rand(5) + 1
puts five_sided_die

puts "Rolling two 6 sided dice!"
six_sided_die = rand(6) + 1
puts six_sided_die
EOC

# Create method that simulates rolling of a die

def roll_die(how_many_dice)
  # Rolling just one die
  random_sided_die = rand(5..6)
  puts "Rolling a #{random_sided_die} sided die!"
  rolling_die = rand(random_sided_die) + 1
  puts rolling_die

  puts "-----"

  # Rolling numerous dice
  number_of_dies = { "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six" }
  random_sided_die_second_roll = rand(5..6)
  dice_selection = number_of_dies[how_many_dice]
  puts "Rolling #{dice_selection} #{random_sided_die_second_roll} sided dice!"
  dice_roll_possibility = how_many_dice * random_sided_die_second_roll
  puts dice_roll_possibility

end

roll_die(5)
roll_die(4)
roll_die(3)
roll_die(2)
roll_die(1)