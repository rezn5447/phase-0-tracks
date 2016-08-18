
### Pseudocode ###

# Hydra monster. several heads have different personality 'traits' that do different things based on their traits

# Gonna need an array of traits.

# Probably want to be able to create a random number of heads too for each monster.

# Some attack method, that makes some heads attack if they have an angry or aggressive disposition

# Maybe if two traits don't get a long there is a chance they will fight with each other

# Cut off head method. that checks if the number that is input is one of the heads available, then cuts that head off. But SURPRISE! 

# When that head is cut off, two more heads pop up in its place! they have to be given random traits too!


class Hydra

# Each head is assigned a personality from the array of personalities here:	
	@@personality_array = ["lazy", "happy","grumpy","dopey","bashful","smarty","murderous", "docile", "bored","menacing","pensive","disinterested"]
# Attr Readers and Accessors for later use:	
	attr_reader :personalities
	attr_accessor :magic, :heads

	def initialize(heads, name)
		@name = name
		@heads = heads
		@magic = 2 
		@personalities = []
		@heads.times do @personalities << @@personality_array.sample
			
			end
			
		p "Emerging from its slumber the vicious #{@name} rears its #{heads} heads!!!"
	
	end
	

### HYDRA ATTACK METHOD ###
	def attacks
### att_heads check to see if any heads are going to attack and add them to this value
		att_heads = 0

### Loop through the personalities array of the hydra and perfrom different statements based on the personalities

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
	
	## AFTER THE LOOP, IF ANY HEADS ARE ATTACKING, THE FIGHT RAGES ON! ##
	

		if att_heads == 0 
			p "Docile Hydra! You win!"
		else 
			p "The #{@name} is still in the fight with #{att_heads} angry head(s)! Can you figure out a way to best the beast!?!"
		end #End att_heads check

	end #End of attacks METHOD

	
### Cuts off a random head, and replaces it with two more random heads! ###
	def cut_off_random
	
	rand_id = rand(0...@heads)
		
	@heads += 1
	
	@personalities.insert(rand_id, @@personality_array.sample, @@personality_array.sample)
	
		puts "Despite slicing off head # #{rand_id}, the vicious #{@name} grows two more! They seem #{@personalities[rand_id]} and #{@personalities[rand_id + 1]}."
	end
	
## CUTS OFF HEAD (INT) AND STILL REPLACES IT WITH TWO MORE ##
	def cut_off_head(head)
	
	@heads += 1
	
	@personalities.insert(head, @@personality_array.sample, @@personality_array.sample)
	
	
	puts "You start to notice a pattern here! focusing on the number #{head} head, You attempt a strategy to make the hydra less aggressive. #{@name} grows two more heads in its place! They seem #{@personalities[head]} and #{@personalities[head + 1]}."
	end # END cut_off_head METHOD

end # End Hydra class