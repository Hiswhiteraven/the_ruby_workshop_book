def mind_reader(range)

  magic_number = rand(range)
  puts "What's your guess?"
  guess = gets.chomp.to_i

  if guess == magic_number
    puts "That's right!"
  else
    puts "Sorry, that's not correct. The correct number is: #{magic_number}"
  end

end

mind_reader(1..3)
