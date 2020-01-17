print "Enter the radius for the circular candy: "
radius = gets.chomp.to_f
pi = 3.142
perimeter = 2 * pi * radius
area = pi * (radius ** 2)
puts "The perimeter of the candy is #{perimeter}."
puts "The area of the candy is #{area}."