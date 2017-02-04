#Release 0:Implement simple search

def search_array(arr, number)
	count = 0
	arr.each do |digit|
		if digit == number
			return count
		end
		count += 1	
	end
	nil
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)



#Fibonaci sequence



def fib(n)
  sequence = [0, 1]
  while sequence.length < n do
    sequence.push(sequence[-2] + sequence[-1])
  end
 p sequence
end

p fib(6)






