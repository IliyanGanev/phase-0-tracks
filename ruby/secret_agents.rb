
#Encrypt

#Write a method with an argument(password)
#Write a loop to iterate through each letter and replace with the next one.




#Decrypt
#Write a method that takes an argument(password)
#Write a loop to iterate through each letter.
#Replace each letter with the previous one.
#Declare a variable as the alphabet as a string.
#Loop through string length and use conditional statement to see which letters 
#match password letters and return the previous one. 


def encrypt(password)
  counter = 0
while counter < password.length
	p = password[counter].next
print p
  counter += 1
end
end


def decrypt(password)
counter = 0
alphabet = "abcdefghijklmnopqrstuvwxyz"
while counter < password.length
	a = password[counter]
	d = alphabet.index(a)-1
 print alphabet[d]
 counter += 1

end
end


