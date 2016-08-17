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

	end #END PUPPY CLASS
  
 S

fido = Puppy.new 

fido.roll_over

fido.speak(4)

p "How old is your dog in human years?"
ans = gets.chomp
fido.dog_years(ans)

fido.wag_tail(5)






#### RELEASE #2 MY OWN CLASS ####




class Hydra
# Each head is assigned a personality from the array of personalities here:	
	@@personality_array = ["lazy", "happy","grumpy","dopey","bashful","smarty","murderous", "docile", "bored","menacing","pensive","disinterested"]
	
	

	def initialize(heads, name)
		@name = name
		@heads = heads
		@personalities = []
		@heads.times do @personalities << @@personality_array.sample
			
			end
			
		p "Emerging from its slumber the vicious #{@name} rears its #{heads} heads!!!"
	
	end
	
	def heads
		@heads
	end

	def personalities()
		p @personalities
	end
	
	
	def attacks
		att_heads = 0
	@personalities.each do |per|
	if per == 'murderous' || per == 'grumpy' || per == 'menacing'
		att_heads += 1
		p "The #{per} head attacks!"
	elsif per == 'smarty' || per == 'disinterested'
	
		p "This #{per} head chooses not to attack and grabs a book instead."
	else
		
		p "The #{per} head chooses not to attack"
		end # End of IF statement
	end # End of EACH statement

	end #End of attacks METHOD

	
	
	def cut_off_random
	
	rand_id = rand(0...@heads)
		
	@heads += 1
	
	@personalities.insert(rand_id, @@personality_array.sample, @@personality_array.sample)
	
		puts "Despite slicing off head # #{rand_id}, the vicious #{@name} grows two more! They seem #{@personalities[rand_id]} and #{@personalities[rand_id + 1]}."
	end
	
	

end # End Hydra class

### Initialzing 50 Hyrdas!
### Array to store all values
hyd_array = []
i = 1
while i < 51

## creates new hydras with random number of heads ##
hyd_array << Hydra.new(rand(2..9),"Tiamat#{i}")

i += 1

end #End creation of hyrda arrays! ** GASP So many hydras! **

### RUNNING CLASS METHODS ON EACH OF THE HYDRAS IN THE ARRAY! SO MANY VALUES!! ###
hyd_array.each do |x|
	
 	x.heads
	x.attacks
end 
