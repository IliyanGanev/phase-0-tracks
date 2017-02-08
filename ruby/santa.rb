class Santa

def initialize(gender, ethnicity)
	p "Initializing Santa instance..."
	@gender = gender
	@ethnicity = ethnicity
end

def speak 
	p "Ho, ho, ho!Haaaappy holidays!"
end

def eat_milk_and_cookies(type)
	p "That was a good #{type}"
end

end

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
age = 0

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature(unicorn)", "N/A"]

example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |santa|
	santa.speak
end