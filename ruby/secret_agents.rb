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
	
	encrypt("abc")
	encrypt("tyw")