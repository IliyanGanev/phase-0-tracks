class Puppy

	def initialize
		puts "Initializing new puppy instance..."
	end

  	def fetch(toy)
   		 puts "I brought back the #{toy}!"
    	 
  	end

  	def speak(number)
  		number.times{ puts "Woof!"}	
 	end
 			 	
  	def roll_over
  		puts "*rolls over*"
  	end

	def dog_years(years)
		doggyears = years * 7
		"The puppy is #{doggyears} dog years old"
	end

	def sit
		puts "*Puppy sits*"
	end

end

#fido driver code
fido = Puppy.new
fido.fetch("ball")
fido.speak(2)
fido.roll_over
puts fido.dog_years(3)
fido.sit 



class Gymnast

  def initialize
    puts "Initialized an instance of Gymnast."
  end

 def jump(number)
    "Gymnast jumps #{number} times."
  end

 def flip(direction)
    "Gymnast does a #{direction}-flip."
  end

 def cartwheel
    "Gymnast does a cartwheel."
  end
end


gymnasts = [] # array to store gymnasts

50.times {gymnasts << Gymnast.new}

gymnasts.each do |gymnast|
  puts gymnast.flip("front")
  puts gymnast.jump(4)
  puts gymnast.cartwheel
end
