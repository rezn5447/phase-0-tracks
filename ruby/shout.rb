module Shout

	# we'll put some methods here soon, but this code is fine for now!


	def self.yell_angrily(words)
		words.upcase + "!!!" + "    =("
	end

	def self.yell_happily(words)
		words.upcase + "!!!" +  "   =D"
	end


end



p Shout.yell_happily("Wheeeee!")

p Shout.yell_angrily("Crap")
