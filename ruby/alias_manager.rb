# DO THE THING
# => In phase-0-tracks/ruby/alias_manager.rb, pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:

# => Swapping the first and last name.

# => Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

## PSEUDOCODE ##

# => gonna split first and last name into separate strings using split(' ')

# => look up ruby doc (I think there is a method to reverse array??) so I can switch first and last names

# => changing letters sounds like using next? but I think I will need an if / else to make sure I'm changing only consonants. vowels will need their own method.

# => Handle edge case (a, e, i, o, or u) u will change to 'a'

# => Then combine the array back into a full name. I'm thinking something like 'alias_name = (changed[0] + changed[1])'

# => Then p alias_name to console

## END PSEUDOCODE ##

## DATABASE TO STORE NAMES ##
$database = []

def vowel_mix(letters)
	vowels = "aeiou"
	ali_name = ""
letters.each do |letter|
	
	# CATCH THOSE UPPERCASE LETTERS!
letter.downcase!

	# TO CATCH VOWELS	
	if vowels.index(letter) != nil
			if letter == 'u'
				
				ali_name = ali_name + 'a'
			else
				
				ali_name = ali_name + vowels[vowels.index(letter) + 1]
			 end
		  
# TO SKIP A VOWEL IF consonant.NEXT IS A VOWEL
	elsif vowels.index(letter.next) != nil
		
		ali_name = ali_name + vowels[vowels.index(letter.next)].next


# ELSE FOR consonant.NEXT THAT IS NOT A VOWEL 
	else 
		ali_name = ali_name + letter.next
	
	end # END IF STATEMENTS

  end # END .EACH TO LETTER	

  ali_name.capitalize!

end # END METHOD


def alias_name(name)
	
	if name == "quit"
		exit!
	else

# Splitting name and reversing name placements
spl_name = name.split(' ').reverse!


ali_fname = spl_name[0].chars
ali_lname = spl_name[1].chars

vowel_mix(ali_fname)
vowel_mix(ali_lname)

# Entering alias into database
$database << "#{name} will now be known as #{vowel_mix(ali_fname)} #{vowel_mix(ali_lname)}"
end

p "Alias Name Generator: Input Names and type 'quit' to generate aliases"
input = gets.chomp

until input == "quit"
p "Next Name please: "
input = gets.chomp
alias_name(input)

end


puts "\n All Names Entered"
p $database
# => This is the most complex algorithm you've had to write, and the toughest release of this challenge. How will you break it down into manageable pieces? Try to identify all of the mini-challenges and considerations that show up in your algorithm, such as

# => When will it be helpful to convert the string to an array to work with it more easily?
# => How will you figure out whether a letter is a vowel?
#How will you deal with the fact that some letters are uppercase?
#How will you handle edge cases?
# => You may find it helpful to write additional methods -- one for each job -- and then combine them. It's less overwhelming, for instance, to start converting your algorithm to code by writing a next_vowel method that takes a vowel character and returns the next vowel character. Once you know that small piece works because you've tested it with a few different vowels, you can use it in your program and trust that it's unlikely to be the source of any bugs that come up. This is a great way to make steady progress.

# => If you do successfully implement the algorithm, "Felicia Torres" will become "Vussit Gimodoe", which is a rather odd name. Luckily, our dearest Vussit is from a country no one has ever heard of, mainly because it doesn't really exist.









# => Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)






# => Use a data structure to store the fake names as they are entered. When the user exits the program, iterate through the data structure and print all of the data the user entered. A sentence like "Vussit Gimodoe is actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.