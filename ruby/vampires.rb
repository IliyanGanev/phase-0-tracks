puts "How many empoyees will be processed?"
number_of_employees=gets.chomp.to_i
count=0
while count<number_of_employees
 
puts "What is your name?"
name = gets.chomp 

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i

year=false

if age == (Time.new.year-year_born)
  year = true
else
  year = false
end


puts "Our company cafeteria serves garlic bread.Should we order some for you?"
garlic = gets.chomp 
if 
  garlic=="yes"
    garlic = true
else
  garlic = false
end
  
  
puts "Would you like to enroll in our company's health insurance?"
insurance = gets.chomp
if insurance=="yes"
  insurance = true
else
  insurance = false
end

valid_input = false

until valid_input
puts "Name any allergies one at a time! Type done when finished."
allergies=gets.chomp
 if allergies=="sunshine"
  puts "Probably a vamp"
   valid_input = true
   elsif allergies=="done"
   valid_input = true
 end
 end
   

if year && garlic
  puts "Probably not a vampire."
elsif (!year && !garlic) || !insurance
  puts "Probably a vampire."
elsif (!year && !garlic) && !insurance
  puts "Almost certainly a vamire."
elsif name == "Drake Cula"
  puts "Definitely a vampire"
else
  puts "Results inconclusive."
  
end

  count+=1   
end

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
  
