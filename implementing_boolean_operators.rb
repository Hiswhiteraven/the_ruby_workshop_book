def truthiness(x, y)

  puts "AND: ", x && y

  puts "OR: ", x || y

  puts "!AND: ", !(x && y)

  puts "!OR: ", !(x || y)

end

truthiness(true, true)
puts "*****"
truthiness(true, false)
puts "*****"
truthiness(false, true)
puts "*****"
truthiness(false, false)
puts "*****"
truthiness(0, true)
puts "*****"
truthiness(nil, false)
puts "*****"
