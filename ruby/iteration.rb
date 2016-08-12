

# => In phase-0-tracks/ruby/iteration.rb, write your own method that takes a block. Your method should print out a status message before and after running the block. Your block doesn't have to do anything fancy -- it can just print out several of its own parameters.


def add_green

puts ("Add Green to it!")
yield('Pete')

end

add_green{ |n1| " And Orange while you are at it! Hurry #{n1} !"}




# => In phase-0-tracks/ruby/iteration.rb, declare an array and a hash, and populate each of them with some data. We don't care what data you use, but it shouldn't be nonsense data -- it should represent a reasonable scenario in which those data structures would be used. (A hash full of random letters and numbers, for instance, is not as meaningful as a hash that associates Hollywood actors with their best-known character.)

sports_array = ["football","rugby","baseball","golf","surfing","tennis"]



hex_colors = {"black" => "#000000", "white" => "#FFFFFF", "gray" => "666666", "red" =>"#FF0000", "yellow" => "#FFFF00", "blue" => "#0000FF"}




# => Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way). Note that you can't call .map! on a hash, so you can skip that (.map returns an array, so a destructive map method is logically impossible on a hash). Print the data structures before and after each call to demonstrate whether they have been modified or not.



sports_array.each do |sport|
puts " I like to play #{sport} !"
end


sports_array.map! do |sport|
sport + " is fun!"
end

p sports_array

hex_colors.each do |color, hex|
puts "the hex color for #{color} is #{hex}"
end




