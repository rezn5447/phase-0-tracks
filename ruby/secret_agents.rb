$alpha = "abcdefghijklmnopqrstuvwxyz"

def encrypt(string)
	
	index = 0
	encryptstr = ""
	while index < string.length 
	
    letter = string[index]
    
    neletter = letter.next
    encryptstr += neletter
    
	
	index += 1 
	end

	puts encryptstr
	end 

def decrypt(string)
	i = 0 
	decryptstr = ""
	
	while i < string.length 
		code = $alpha.index(string[i])
		newletter = $alpha[code - 1]
	i += 1
	decryptstr += newletter
end

puts decryptstr
end
