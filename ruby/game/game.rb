class Game

	attr_accessor :word, :correct_letters, :count, :secret_letters

	def initialize(word)
	  @word = word
	  @correct_letters = @word.split("")
	  @secret_letters = []
	  @word.length.times{@secret_letters.push("_")}
	  @count = 0
		
	end

	
	
	def letter_match_array(letter)
		if @correct_letters.include?(letter)
			 letter_index = @word.index(letter)
			 @secret_letters[letter_index] = letter
			 p @secret_letters
    	else
    		@count+=1
    		 p "Wrong answer"
    	end
  	end  
 
  
end


game = Game.new ("work")


loop do
  puts "Enter a letter (or type 'exit'):"
  input = gets.chomp
  break if input == "exit"
 game.letter_match_array(input)
end