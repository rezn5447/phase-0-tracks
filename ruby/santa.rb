class Santa 
	
	def initialize(name, saying)
		@name = name
		@saying = saying
		puts "initializing Santa Instance ... \n"

	end

	def speak
		puts "Ho, ho, ho! Happy holidays! \n"
		puts " #{@saying} "

	end


	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"

	end



end


Santa001 = Santa.new("BoB", "Yippie, Kai Yay!")
Santa001.speak
Santa001.eat_milk_and_cookies("Snickerdoodle")


Santa1 = Santa.new("Richard", "Bombs Away!!!")
Santa1.speak
Santa1.eat_milk_and_cookies("Gingerbread")