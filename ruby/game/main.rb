require_relative "game"

#Driver code

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