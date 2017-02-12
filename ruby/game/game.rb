class Game

	attr_accessor :word, :guessed_letter, :correct_letters, :guessed_letters, :count, :secret_letters

	def initialize(word)
	  @word = word
	  @guessed_letter = guessed_letter
	  @correct_letters = @word.split("")
		@guessed_letters = []
		@secret_letters = []
		@word.length.times{@secret_letters.push("_")}
		@count = 0
		
	end

	
	
	def letter_match_array(letter)
	  if 
     @correct_letters.include?(letter)
     @guessed_letters << letter
    else
    @count+=1
    end
  end
  
 
  
end


game = Game.new ("work")

p game.letter_match_array("r")
p game.letter_match_array("k")
p game.guessed_letters
p game.count
p game.correct_letters 