
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
	attr_reader :personalities, :heads
	attr_accessor :name

	def initialize(heads, name)
		@name = name
		@heads = heads
		@personalities = []
		@heads.times do @personalities << @@personality_array.sample
			
			end
			
		p "Emerging from its slumber the vicious #{@name} rears its #{heads} heads!!!"
	
	end
	

### HYDRA ATTACK METHOD ###
	def attacks
### att_heads check to see if any heads are going to attack and add them to this value
		att_heads = 0

### Loop through the personalities array of the hydra and perform different statements based on the personalities ###

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





### START OF USER INPUT PROMPTS ###

hyd_ary = []
puts "This is Resdan's Hydra generator, You get to fight a monster that you name yourself! What should be the name of this beast?"
name = gets.chomp


puts "You've choosen to fight the #{name}, how many heads does it have? (put 'random' to generate a random number of heads!)"
heads = gets.chomp!
 if heads == 'random'
 	heads = rand(3..11)
	else
		heads = heads.to_i
		
end

name = Hydra.new(heads,name)
hyd_ary << name
puts "Do you wish to continue conjuring more beasts?? (y / n)"

ans = gets.chomp!

until ans.downcase == 'n'
### ANSWER CHECK TO MAKE MORE MONSTERS OR END AND LOOP THROUGH ARRAY ###
if ans.downcase == "y"
	puts "A bold move!! Lets see if it pays off: What is the name of THIS beast?"

name = gets.chomp

	puts "You've choosen to fight another beast, how many heads does it have? (put 'random' to generate a random number of heads!)"
		heads = gets.chomp!
	 if heads == 'random'
	 	heads = rand(3..11)
		else
			heads = heads.to_i
		end #END heads IF statement
		name = Hydra.new(heads,name)
		hyd_ary << name
elsif ans.downcase == 'n' 
		puts "Probably a good idea to not make too many 3 ton monsters with multiple murderous heads."
	p hyd_ary
### CATCH STATEMENT THAT WILL GENERATE A MONSTER IF ANYTHING BESIDES y OR n IS ENTERED
else
	puts "You messed up in your answer and now You have to fight another one anyway!"
	tiamat = Hydra.new(rand(2..11),'Tiamat')
	hyd_ary << tiamat
end 
puts "Do you wish to continue conjuring more beasts?? (y / n)"
ans = gets.chomp!


end
puts "Probably a good idea to not make too many 3 ton monsters with multiple murderous heads."
hyd_ary.each{ |x| p x}


