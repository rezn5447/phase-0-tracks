# module Shout

# 	# we'll put some methods here soon, but this code is fine for now!


# 	def self.yell_angrily(words)
# 		words.upcase + "!!!" + "    =("
# 	end

# 	def self.yell_happily(words)
# 		words.upcase + "!!!" +  "   =D"
# 	end


# end


module Shout


	def yell_angrily(words)
	p	words.upcase + "!!!" + "    =("
	end

	def yell_happily(words)
	p	words.upcase + "!!!" +  "   =D"
	end
end

class Dad
include Shout	

end



class Newsie
include Shout

end


loud_dad = Dad.new 

loud_dad.yell_angrily("Clean your room")
loud_dad.yell_happily("great catch")



lil_newsie = Newsie.new

lil_newsie.yell_happily("extra extra read all about it")
lil_newsie.yell_angrily("You have to pay for that paper")





