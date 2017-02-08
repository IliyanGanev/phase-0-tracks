class Santa

def initialize(gender, ethnicity)
	p "Initializing Santa instance..."
	@gender = gender
	@ethnicity = ethnicity
	@age = 0
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
age = 0

end

def speak 
	p "Ho, ho, ho!Haaaappy holidays!"
	p "Said the #{@ethnicity} #{@gender} santa."

end

def eat_milk_and_cookies(type)
	p "That was a good #{type}"
end

def celebrate_birthday
	@age += 1
end

def get_mad_at(reindeer_name)
  	@reindeer_ranking.delete(reindeer_name)
	@reindeer_ranking << reindeer_name
	puts "Sorry #{reindeer_name} but your ranking dropped."
end

def gender=(new_gender)
	@gender = new_gender
end

def age
	@age
end

def ethnicity
	@ethnicity
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
p santa.celebrate_birthday
p santa.gender = "Transgender"
p " and he is #{santa.celebrate_birthday} years old"