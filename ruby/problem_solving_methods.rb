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

# Release 2 Sort an Array

##Bubble sort: Walk through the list and put two adjacent elements in descending order. 
##It continues to iterate through the list until no two elements are swapped (swapped=false)

## Pseudocode
    ###create a loop that iterates through the array 1 time less than the number of items in the array
    ### compare the current item in the array to the next item in the array
    ### if item item is greater than next item, swap the items.
    ### keep going until the item has reached the end
    ### repeate for every item in the list until no more items need to be swapped

def bubble_sort(arr)
    n = arr.length

    loop do 
    swapped = false
    (n-1).times do |item|
        if arr[item] > arr[item +1]
            arr[item], arr[item+1] = arr[item +1], arr[item]
            swapped = true
        end
    end 
    break if swapped == false
    end
    arr 
end

a = [5,2,4,6,4,7,8]

p bubble_sort(a)



