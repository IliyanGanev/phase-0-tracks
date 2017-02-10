class Santa
<<<<<<< HEAD

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
		puts "Ho, ho, ho! Haaaappy holidays!"
		puts "Said the #{@ethnicity} #{@gender} santa."

	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type}"
	end
end

#Old setter and getter methods
=begin
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


=end


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
=======
  attr_reader :ethnicity
  attr_accessor :age, :reindeer_ranking, :gender
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity  
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
>>>>>>> santa
  
  
  def speak
    p "Hi I am the new #{@gender} ,#{@ethnicity} santa and I am #{@age} years old."
    p "Ho, ho, ho! Haaaapy holidays"
  end
  
  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end 
  
=begin
  #setter methods
 
  def celebrate_birthday
      @age+=1 
  end
  
  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking[-1] = reindeer_name
 
  end
  
  def gender=(new_gender)
    @gender = new_gender
  end
  
  #getter methods
  
  def gender
    @gender
  end
  
  def age
    @age
  end
  
  def ethnicity
    @ethnicity
  end
  
  def reindeer_ranking
    @reindeer_ranking
  end
=end

end 

#Release 1:
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
=begin
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |santa|
santa.speak
end

#release 2:
#driver code to test setter and getter methods
santas[1].celebrate_birthday
p santas[1].age
santas[1].get_mad_at("Vixen")
p santas[1].reindeer_ranking
santas[2].gender = "metro"
p santas[2].gender
p santas[1].ethnicity

=end

#release 4:
puts "Hi, how many santas do you want to create?"
answer = gets.chomp.to_i 

answer.times do |santa_num|
<<<<<<< HEAD
	new_santa = Santa.new(rand_gender, rand_ethnicity, rand_age) 
	puts "Santa number #{santa_num + 1} says:"
	puts "Hi I am the new #{new_santa.gender} ,#{new_santa.ethnicity} santa and I am #{rand_age} years old."
	new_santa.speak 
=======
santa = Santa.new(example_genders.sample, example_ethnicities.sample)
santa.age = rand(140)
p "Santa number #{santa_num+1} was created"
santa.speak
p"----------------------------"
>>>>>>> santa
end
  
  
  
  
  
  
  
  