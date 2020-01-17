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
  random_sided_die = rand(5...6)
  puts "Rolling a #{random_sided_die} sided die!"
  rolling_die = rand(random_sided_die) + 1

  # Rolling numerous dice
  number_of_dies = how_many_dice
  puts "Rolling #{how_many_dice} #{random_sided_die} sided dice!"

end

roll_die(5)