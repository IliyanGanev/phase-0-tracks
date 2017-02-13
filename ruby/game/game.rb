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


#Driver code

puts "Enter an word! "
input1 = gets.chomp
game = Game.new (input1)

loop do
	puts "Try to guess the letter!"
  p game.secret_letters
  input2 = gets.chomp
  game.letter_match_array(input2)
  if game.secret_letters == game.correct_letters
    p "You win!!!"
    break
  	elsif game.count == input1.length*2
    p "You loose!!!"
    break
  end
end