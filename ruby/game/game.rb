class Game

	attr_accessor :word, :correct_letters, :count, :found_letters

	def initialize(word)
	  @word = word
	  @correct_letters = @word.split("")
	  @found_letters = []
	  @word.length.times{@found_letters.push("_")}
	  @count = 0
		
	end

	
	def augment_found_array(letter)
  		@count += 1
		if @correct_letters.include?(letter)
			letter_index = @word.index(letter)
			@found_letters[letter_index] = letter
			true
    	else
    		false
		end
  	end 
end

