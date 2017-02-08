class Santa

def initialize
	print "Initializing Santa instance..."
end

def speak 
	print "Ho, ho, ho!Haaaappy holidays!"
end

def eat_milk_and_cookies(type)
	print "That was a good #{type}"
end

end

dedo = Santa.new

dedo.speak
dedo.eat_milk_and_cookies("snickers")
