module Shout
	def self.yell_angrily(words)
	words + "!!!" + " :("
	end

	def self.yell_happyly(words)
		words + ":-)"
	end
end

p Shout.yell_angrily("Rrrrr")
p Shout.yell_happyly("Yeeey")