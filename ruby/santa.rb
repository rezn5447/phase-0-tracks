class Santa 
	attr_reader :age, :ethnicity
	attr_accessor :gender, :cookies
	attr_writer :gender
	@@cookies = 5
	def initialize(gender,ethnicity)
		
		@gender = gender
		@ethnicity = ethnicity
		@cookies = 5
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "initializing Santa Instance ... \n"

	end

	def speak
		puts "Ho, ho, ho! Happy holidays! \n"
		puts " #{@saying} "

	end


	def eat_milk_and_cookies(cookie)
		if @cookies != 0
		puts "That was a good #{cookie} cookie!"
		@cookies -= 1
	else
		p "THERE ARE NO MORE COOKIES YOU ATE THEM ALL!!!!"
		end
	end
	
	
### THREE ATTRIBUTE CHANGING METHODS!! ###
	def celebrate_birthday
	@age +=1

	end	
	
	def get_mad_at(reindeer)
	@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer))
	
	@reindeer_ranking.push(reindeer)
	p @reindeer_ranking
	end
	
	# def set_gender(gend)
	# @gender = gend
	# p "You now identify as #{@gender}"
	# end
	
## TWO GETTER METHODS ##



	def age
		@age
	end
	
	
	def ethnicity
		@ethnicity
	end
end

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

sally_pants = Santa.new("gender fluid", "Unicorn")

sally_pants.celebrate_birthday
sally_pants.get_mad_at("Prancer")
sally_pants.gender = "nachos"
sally_pants.cookies = 7


