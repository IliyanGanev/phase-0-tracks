class Santa
  attr_reader :ethnicity
  attr_accessor :age, :reindeer_ranking, :gender
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity  
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  
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
santa = Santa.new(example_genders.sample, example_ethnicities.sample)
santa.age = rand(140)
p "Santa number #{santa_num+1} was created"
 santa.speak
 p"----------------------------"
end
  
  
  
  
  
  
  
  