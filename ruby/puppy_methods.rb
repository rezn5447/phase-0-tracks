class Puppy

	def initialize
		p "Initializing new puppy instance"

	end

	def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  	
  	end

  
  	def speak(int)
  	int.times{puts "Woof!"}
  	end

	 def roll_over
	  	p "rolls over"
	  
	 end

	  
	def dog_years(years)
	  	d_years = years.to_i * 7
	  	p "That means your dog is #{d_years} years old!"
	end

	def wag_tail(int)
	  	int.times{"Wag"}
	end

	end #END PUPPY CLAS
  
 S

fido = Puppy.new 

fido.roll_over

fido.speak(4)

p "How old is your dog in human years?"
ans = gets.chomp
fido.dog_years(ans)

fido.wag_tail(5)