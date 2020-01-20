<<-EOC
def mind_reader(range)

  magic_number = rand(range)
  puts "What's your guess?"
  guess = gets.chomp.to_i

  if guess == magic_number
    puts "That's right!"
  else
    puts "Sorry, that's not correct. The correct number is: # {magic_number}"
  end

end

mind_reader(1..3)
EOC

def mind_reader

  magic_number = 7
  guess = nil

  while guess != magic_number do
    print "Nope! Try Again! " unless guess.nil?
    puts "What's your guess?"
    guess = gets.chomp.to_i
  end

  puts "That's right!"

end

mind_reader