

puts "How many empoyees will be processed? "
number_of_employees = gets.chomp.to_i

count=0
while count < number_of_employees
  puts "Employee number: #{count.next}"
  
  puts "What is your name?"
  name = gets.chomp 

  puts "How old are you? "
  age = gets.chomp.to_i

  puts "What year were you born?"
  year_born = gets.chomp.to_i

  if age == (Time.new.year - year_born)
    realistic_age = true
  else
    realistic_age = false
  end


  puts "Our company cafeteria serves garlic bread. Should we order some for you? "
  garlic = gets.chomp 
  if garlic == "yes"
    garlic = true
  else
    garlic = false
  end
  
  
  puts "Would you like to enroll in our company's health insurance? "
  insurance = gets.chomp
  if insurance == "yes"
    insurance = true
  else
    insurance = false
  end

  valid_input = false
  result = nil
  
  until valid_input
    puts "Name any allergies one at a time! Type done when finished. "
    allergies = gets.chomp
    
    
    if allergies == "sunshine"
      result = "Probably a vampire."
      valid_input = true
    elsif allergies == "done"
      valid_input = true
    end
  end
  
  
  
  
  if result == nil
    result = "Results inconclusive"
    
    if realistic_age && (garlic || insurance)
      result = "Probably not a vampire."
    end
    
    if !realistic_age && (!garlic || !insurance) 
      result = "Probably a vampire."
    end
    
    if !realistic_age && !garlic && !insurance
      result = "Almost certainly a vamire."
    end
    
    if name == "Drake Cula" || name == "Fu Tang"
      result = "Definitely a vampire"
    end
  end
  
  count += 1 
  puts result
  
end
 
 
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
  
