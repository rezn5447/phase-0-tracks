# Method Declarations

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

$alpha = "abcdefghijklmnopqrstuvwxyz"    

def decrypt(string)
	i =  0

	decryptstr = ""

while i < string.length
	code = $alpha.index(string[i])
	newletter = $alpha[code - 1]
		i += 1
	decryptstr += newletter
	
	end
puts decryptstr
end

## decrypt(encrypt("swordfish"))  ## 

## decrypts the encryption of swordfish ##
## moves each letter forward one, then moves it back one ##

# Driver Code

puts "Do you want to Encrypt or Decrypt Code?(e/d)"
decision = gets.chomp

puts "Input Code here"
password = gets.chomp
	if decision == "e"
	encrypt(password)
	elsif decision == "d"
	decrypt(password)
else
	puts "Something went wrong your password is broken"
end