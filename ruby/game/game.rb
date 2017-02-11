class Game

	attr_accessor :word_to_guess, :word, :guess_count

	def initialize
		@word = word
		@word_to_guess = word_to_guess
		@guess_count = 0
	end


	def guess(word, letter)
		if
		word.index(letter)
		return letter
	else
		false
	end

end


game = Game.new
game.guess("abcd", "a")