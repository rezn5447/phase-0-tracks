
# => In phase-0-tracks/ruby/hashes.rb, pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

# => Your keys should be symbols unless you find that you need a string for some reason -- usually only when spaces or other "user friendly" formatting are needed (as in the case of using someone's full name as a hash key). Basically, symbols are simpler for programmers to use, and readable enough by technical folks to be used in place of strings most of the time.

## Your program should ...

# => Prompt the designer/user for all of this information.


# => convert any user input to the appropriate data type.

# => Print the hash back out to the screen when the designer has answered all of the questions.



# => Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# => Print the latest version of the hash, and exit the program.




client_info = {
	
	
	
}


puts "Client Name:"
name = gets.chomp!
client_info[:name] = name

puts "What is your age?"
age = gets.chomp
client_info[:age] = age

puts "How many children do you have?"
kids = gets.chomp
client_info[:kids] = kids.to_i

puts "Is your favorite decor theme baige? (yes / no)"
theme = gets.chomp
if theme == "yes"
	theme = TRUE
	
	client_info[:theme] = theme
	
elsif theme == "no"
	theme = FALSE
	client_info[:theme] = theme
else
	theme = "Not specified"
	client_info[:theme] = theme
end
p "Here is the info that you entered:"
p client_info
p "\n \n"

p "Would you like tp update any values?( yes / no )"
ans = gets.chomp
if ans == "no"
	p "Thank you for entering everything correctly! Heres your info again:"
	p client_info
else
	puts "What would you like to change? (enter the key or use 'done' to quit)"
	change = gets.chomp.to_sym
	
	if change == [:age] || change = [:kids]
		p "Enter a new number for #{change}"
		
		elsif change = []
	
	



