def survey 

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp
age = age.to_i

puts "What year were you born?"
year = gets.chomp
year = year.to_i
if year == 0 
puts "you didn't really put a year!"
end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
  	bread = gets.chomp
    until bread == "yes" || bread == "no"
	puts "I'm sorry, please only use 'yes' or 'no' for this question"
     bread = gets.chomp 
     end

puts "Would you like to enroll in the company's health insurance? (yes or no)"
	insurance = gets.chomp
	until insurance == "yes" || insurance == "no"
	puts	"I'm sorry, please only use 'yes' or 'no' for this question"
	insurance = gets.chomp 
	end

	 if age < 100 && (2016 - year = age || 2015 - year = age)

		if bread == "yes" && (name != "Drake Cula" || name != "Tu Fang")
			
		result = "Probably not a vampire";
	
		end
	
		
		
	elsif age > 100 || (2016 - year != age || 2015 - year != age )

	 	if bread == "no" || insurance == "no"
		result = "Probably a vampire"

		end
	
	elsif age < 100 && (2016 - year = age || 2015 - year = age)
	
		if bread == "yes" && insurance == "yes"
			if name == "Drake Cula" || name == "Tu Fang"
	
		result = "Clearly a vampire"
		end
	end

    else
    	result = "Results are inconclusive"
    end
    puts "#{result}"
    
end

survey()