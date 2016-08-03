hamster_name = ""
age = 0
volume = 0
good_for_adoption = ""


puts "What is the name of the hamster?"
hamster_name = gets.chomp

puts "How old is this hamster?"
age = gets.chomp

puts" What color is the hamster?"
color = gets.chomp

puts "How loud is the hamster on a scale of 1 to 10?"
volume = gets.chomp

puts "Is this hamster good for adoption? (yes or no)"
good_for_adoption = gets.chomp
	

if age == ""
	age = nil
else
    age = age.to_i
end
	volume = volume.to_i
	
puts"All data entered!"
puts "This hamster is named #{hamster_name}!"
puts "This hamster is #{age} years old"
puts "This hamster is #{color}  in color"
puts "This hamster is #{volume} on a volume scale of 1 to 10"
puts "Is this hamster good for adoption? #{good_for_adoption}"