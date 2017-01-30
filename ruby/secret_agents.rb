
#Encrypt

#Write a method with an argument(password)
#Write a loop to iterate through each letter and replace with the next one.
#Use conditional statement to eliminate edge cases.

#Decrypt

#Write a method that takes an argument(password)
#Write a loop to iterate through each letter.
#Replace each letter with the previous one. 

#  METHOD DECLARATIONS

#Encripts a string by advancing one letter forward

def encrypt(password)
  counter = 0
  #declare emty string to add to
  result = ""
  #loop over the string letters
  while counter < password.length
	  letter = password[counter]
   #eliminate edge cases
    if letter == " "
      result << " "
    elsif letter == "z"
      result << "a"
    else
      result << letter.next
    end
    counter += 1
  end
  result
end

#decrypt password by going back one letter backwards

def decrypt(password)
  counter = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  #declare emty string to add to
  result = ""
  #loop over the string letters
  while counter < password.length
	  letter = password[counter]
   #eliminate edge cases
    if letter == " "
      result << " "
    elsif letter == "a"
      result << "z"
    else
    #Use index built in method to get the index from the alphabet minus one	
      alph_index = alphabet.index(letter) - 1
      #add the alphabet letter coresponding to the index and add it to result string
      result << alphabet[alph_index]
    end
    counter += 1
  end
  result
end

#Driver CODE
#Ask the agent what they want to do
puts "Do you want to encrypt or decrypt?"
answer = gets.chomp
puts "Type a password!"
password = gets.chomp.downcase

if answer == "encrypt"
  puts encrypt(password)
else 
  puts decrypt(password)
 #say good bye 
end
puts "Have a nice day!"


# decrypt(encrypt("swordfish")) works because first the string is encripted (what is inside the right barackets is evaluated)and then the decrypt method is executed.
 






		
