class Game

	attr_accessor :word, :guessed_letter, :correct_letters, :guessed_letters, :count, :secret_letters, :l

	def initialize(word)
	  @word = word
	  @guessed_letter = guessed_letter
	  @correct_letters = @word.split("")
	  @guessed_letters = []
	  @secret_letters = []
	  @l = @word.tr('a-z', '_') 
	  @word.length.times{@secret_letters.push("_")}
	  @count = 0
	end


	def guess(word, letter)
		if
			word.index(letter)
			return letter
		else
			false
			@guess_count+=1
		end
	end

end


game = Game.new
p game.guess("abcd", "a")
p game.guess_count