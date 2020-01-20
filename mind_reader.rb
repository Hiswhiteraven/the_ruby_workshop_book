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
  max_guesses = 3
  attempts = 0
  guess = nil

  while guess != magic_number do
    print "Nope! Try Again! " unless guess.nil?
    puts "What's your guess?"
    guess = gets.chomp.to_i
    break if attempts >= max_guesses
    attempts = attempts + 1
  end

  winner = "You've guessed it!"
  loser = "You ran out of guesses, try again later!"
  puts guess == magic_number ? winner : loser

    # puts guess == magic_number ? "That's right!" : "You ran out of guesses, try again later!"

    # if guess == magic_number
    # puts "That's right!"
    # else
    # puts "You ran out of guesses, try again later!"
    # end

end

mind_reader