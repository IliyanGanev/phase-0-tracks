class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender, :reindeer_ranking
	
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
	
	end

	def speak 
		puts "Ho, ho, ho!Haaaappy holidays!"
		p "Said the #{@ethnicity} #{@gender} santa."

	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
	  	@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
		"Sorry #{reindeer_name} but your ranking dropped."
	end


end



santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature(unicorn)", "N/A"]

example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end


santas.each do |santa|
	santa.speak
end

santas[2].eat_milk_and_cookies("Snickers")

santa = Santa.new("male", "white")
santa.speak
santa.eat_milk_and_cookies("Mars")
puts "Santa has a birthday and he is #{santa.celebrate_birthday} years old"
santa.gender = "male"
puts "Santa's gender is #{santa.gender},he is #{santa.ethnicity} and #{santa.age} years old."
puts santa.get_mad_at("Vixen")
p santa.reindeer_ranking

#Create a variable with randomly selected genders
#Create a variable for randomly selected ethnicities.
#Create a variable with random number between 0 and 140.
#Create a large number of santas with randomly selected attributes.
#Print out santas attributes.

rand_gender = example_genders.sample
p rand_gender
rand_ethnicity =example_ethnicities.sample
p rand_ethnicity
rand_age = rand(140)
p rand_age

