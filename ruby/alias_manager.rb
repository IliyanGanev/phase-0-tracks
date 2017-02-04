#Write a method that takes spy's real name as a an argument.
#Pass each character to another function that will change the vowels and consonants and deal with edge cases.
#Change the vowels to the next vowel.
#Change all the consonants to the next consonant.
#Split the two names, reverse and capitalize them.
#Ask the user for input.
#Store the real and fake names.
#Print all the names.

#Write a method that takes spy's real name as a an argument.
#Pass each character to another function that will change the vowels and consonants and deal with edge cases.
#Change the vowels to the next vowel.
#Change all the consonants to the next consonant.
#Split the two names, reverse and capitalize them.
#Ask the user for input.
#Store the real and fake names.
#Print all names.

def translate(char)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwhyz"
  if char == " "
    " "
  elsif char == "z"
    "b"
  elsif char == "a"
    "e"
  elsif char == "e"
    "i"
  elsif char =="i"
    "o"
  elsif char == "o"
    "u"
  elsif char == "u" 
    "a"
  else
    consonant_index = consonants.index(char).next
    consonants[consonant_index]
  end
end


def spy_name(name)
  counter = 0  
  translated_response = ""
  while counter < name.length 
    translated_response << translate(name[counter].downcase)
    counter += 1
  end

  name_array = translated_response.split(" ")
  name_reversed = name_array.reverse
  capitalized_name = name_reversed.map {|i| i.capitalize }
  full_name = capitalized_name.join(' ')
end

spies = {}

loop do  
  puts "Type name or 'q' to exit!"
  name = gets.chomp 
  break if name == 'q'
  spies[name] = spy_name(name)
  p spy_name(name)
end
  
  spies.each do |name, spy_name|
  puts "#{name} is also known as #{spy_name}'."
  end

















