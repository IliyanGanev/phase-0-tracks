class Game
	attr_reader :word
	attr_accessor :word_to_guess, :guess_count

	def initialize(word)
		@word = word
		@word_to_guess = word_to_guess
		@guess_count = 0
	end
end