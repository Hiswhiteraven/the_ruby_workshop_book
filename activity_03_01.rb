
def play_game

  def play_choice
    player_choice = gets.chomp.downcase

    if player_choice == "yes" or "y"
      puts "I'm going to pick a random number that you will have to guess. Please enter the maximum number for the guessing range."
      maximum_number = gets.chomp.to_i
      correct_number = rand(maximum_number)
      should_we_play? = true
    elsif player_choice == "no" or "n"
      puts "Thanks for playing!"
    else
      puts "I did not understand what you typed!"
    end
  end

  def guess

    puts "What's your guess?"

    player_guess = gets.chomp.to_i

    if player_guess > correct_number
      puts "Guess lower"
    elsif player_guess < correct_number
      puts "Guess higher"
    elsif player_guess == correct_number
      puts "You guessed correctly!"
    else
      puts "I did not understand what you typed!"
    end

  end

  print "Welcome to \"HiLow\" Shall we play? [Yes, No] "

  play_choice

  while should_we_play? = true do

    guess

  end

  play_choice


end






