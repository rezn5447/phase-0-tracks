def survey 

allergies = ""


puts "How many employees are being processed?"
number = gets.chomp
number = number.to_i
i = 1
if number == 0

puts "No employees being processed today"

else

while i <= number 
puts "Employee # #{i}"
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

puts "Can you please type any allergies you have (type 'done' to continue)"

 until allergies == "done" || allergies == "sunshine"
 	allergies = gets.chomp
 	
end

	 
if age <= 100 && (2016 - year == age) && bread == "yes" && insurance == "no" && name != "Drake Cula" && name != "Tu Fang"
			
		result = "Probably not a vampire"
	
	
		
	elsif allergies == "sunshine" || (age >= 100 || (2016 - year != age)) && (bread == "no" || insurance == "no")
		
		result = "Probably a vampire"

	elsif (age <= 100) && (2016 - year == age) && (bread == "yes") && (insurance == "yes") && (name == "Drake Cula" || name == "Tu Fang")
			result = "Definitely a vampire"
		
    else
    	   result = "Results are inconclusive"
   	

	 end

    puts "#{result}  \n \n"
    i += 1
  end
  end
    puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end

survey()