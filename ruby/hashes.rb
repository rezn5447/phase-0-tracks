
client_info = {
	
	
	
}


puts "Client Name:"
name = gets.chomp!
client_info[:name] = name

puts "What is your age?"
age = gets.chomp
client_info[:age] = age.to_i

puts "How many children do you have?"
kids = gets.chomp
client_info[:kids] = kids.to_i

puts "Is your favorite decor theme baige? (yes / no)"
baige = gets.chomp
if baige == "yes"
	
	client_info[:baige] = TRUE
	
elsif baige == "no"

	client_info[:baige] = FALSE

else

	client_info[:baige] = "Not Specified"
end

puts "Is your favorite decor theme purple? (yes / no)"
purple = gets.chomp
if purple == "yes"
	
	client_info[:purple] = TRUE
	
elsif purple == "no"

	client_info[:purple] = FALSE

else

	client_info[:purple] = "Not Specified"
end


puts "Are you obsessed with feng shui? (yes / no)"
feng = gets.chomp
if feng == "yes"
	
	client_info[:feng] = TRUE
	
elsif feng == "no"

	client_info[:feng] = FALSE

else

	client_info[:feng] = "Not Specified"
end

puts " \n Here is the info that you entered: \n"


p client_info


puts " \n Would you like to update any values?( yes / no )"
ans = gets.chomp
if ans == "no"
	puts "Thank you for entering everything correctly! Heres your info again: \n"
	p client_info
else
	puts "What would you like to change? (enter the key or use 'done' to quit)"
	change = gets.chomp
	changed = change.to_sym
	
	if change == "done"
		
		puts "\n Thank you for entering everything correctly! Heres your info again: \n"
		p client_info

	elsif changed == :name
		p "Please enter new value for Client name:"
		value = gets.chomp
		client_info[changed] = value
		
			p "Great! Here is all your info again in cased you missed it.\n"
	
		p client_info
		
		
	elsif changed == :age || changed == :kids
		p "Enter a new number for #{change}"
		value = gets.chomp
		client_info[changed] = value
	
		puts "Great! Here is all your info again in cased you missed it.\n"
	
		p client_info
	

	elsif changed == :purple
	
		p "Oh so you changed your mind about purple. Do you love it now? (yes / no)"
		purple = gets.chomp

		if purple == "yes"
			client_info[changed] = TRUE
		else 
			client_info[changed] = FALSE
		end
			puts "Great! Here is all your info again in cased you missed it. \n"
	
			p client_info

	elsif changed == :baige
	
		p "Oh so you changed your mind about baige. Do you love it now? (yes / no)"
		baige = gets.chomp

		if baige == "yes"
			client_info[changed] = TRUE
		else 
			client_info[changed] = FALSE
		end
		
			puts "Great! Here is all your info again in cased you missed it. \n"
	
			p client_info

	elsif changed == :feng
	
		p "Oh so you changed your mind about feng shui. Are you Obsessed now? (yes / no)"
		feng = gets.chomp

		if feng == "yes"
			client_info[changed] = TRUE
		else 
			client_info[changed] = FALSE
		end
		
			puts "Great! Here is all your info again in cased you missed it. \n"
	
			p client_info

	
	
	end # end of change statements
end # end of change prompt
	