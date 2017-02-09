class Santa

	attr_reader   :ethnicity
	attr_accessor :gender, :reindeer_ranking, :age
	
	def initialize(gender, ethnicity, age)
		puts "..............................."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		
	
	end

	def speak 
		puts "Ho, ho, ho!Haaaappy holidays!"
		puts "Said the #{@ethnicity} #{@gender} santa."

	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}"
	end

#Setter and getter methods

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
	  	@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
		"Sorry #{reindeer_name} but your ranking dropped."
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

end



#santas = []

#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature(unicorn)", "N/A"]

#example_genders.length.times do |i|
#	santas << Santa.new(example_genders[i], example_ethnicities[i])
#end


#santas.each do |santa|
#	santa.speak
#end

#santas[2].eat_milk_and_cookies("Snickers")

#santa = Santa.new("male", "white")
#santa.speak
#santa.eat_milk_and_cookies("Mars")
#puts "Santa has a birthday and he is #{santa.celebrate_birthday} years old"
#santa.gender = "male"
#puts "Santa's gender is #{santa.gender},he is #{santa.ethnicity} and #{santa.age} years old."
#puts santa.get_mad_at("Vixen")
#p santa.reindeer_ranking

#Create a method with randomly selected genders
#Create a method for randomly selected ethnicities.
#create a method for random number of santa years.
#Create a large number of santas with randomly selected attributes.
#Print out santas attributes.


def rand_gender
	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
    gender = example_genders.sample
end
  
def rand_ethnicity 
    example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature(unicorn)", "N/A"]
    ethnicity = example_ethnicities.sample
end

def rand_age
    rand(140)
end

    

puts "Hi, how many santas do you want to generate?"
answer = gets.chomp.to_i

answer.times do |santa_num|
new_santa = Santa.new(rand_gender, rand_ethnicity, rand_age) 
puts "Santa number #{santa_num+1} says:"
puts "Hi I am the new #{new_santa.gender} ,#{new_santa.ethnicity} santa and I am #{rand_age} years old."
new_santa.speak 
end



