puts "What is the name of the hamster?"
hamster_name=gets.chomp
puts "What is the volume level?(1 to 10)"
volume=gets.chomp.to_i
puts "What is hamster's fur color?"
color=gets.chomp
puts "Is the hamster a good candidate for adoption?(yes/no)"
candidate=gets.chomp
puts "What is the hamster's age?"
age=gets.chomp
if age=="nil"
	 "nil"
else
	 age
end

puts "The hamster is called #{hamster_name}. Its volume level is #{volume}.
Its color is #{color}. And the answer to the question Is he good to be adopted is: #{candidate}.
He is #{age} years old."