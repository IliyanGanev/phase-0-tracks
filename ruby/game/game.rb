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

#Driver code is in main.rb

=begin
puts "Enter a word!"
input1 = gets.chomp
game = Game.new (input1)

loop do
	puts "Try to guess the letter! Your guesses are limited to twice the word length."
	p game.found_letters
	input2 = gets.chomp
	input_was_found = game.augment_found_array(input2)
	p "Wrong answer" if !input_was_found
	p game.found_letters
	if game.found_letters == game.correct_letters
		p "You win!!!"
    	break
  	elsif game.count == input1.length * 2
    	p "You loose!!!"
    	break
  	end
end
=end
