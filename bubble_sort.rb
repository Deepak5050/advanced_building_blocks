def bubble_sort arr
	if arr.size <= 1; p arr #prints [2] if arr = [2], prints [] if arr = []
	else
		sorted = true
		while sorted #'while loop' starts here
			sorted = false #'while loop' stops here after 'if' condition in line 8 is not met
			(arr.size-1).times do |i|
				if arr[i] > arr[i+1] #doesn't go to next line if condition is not met
					arr[i], arr[i+1] = arr[i+1], arr[i]
					sorted = true #helps to start loop again
				end
			end
		end
		arr #returns sorted array
	end
end

array_numbers = [4,3,78,2,0,2] 

p bubble_sort array_numbers #returns[0,2,2,3,4,78]


#-----------------------------------------------------------------
#bubble_sort_by

def bubble_sort_by(array)
	counter = array.size - 1
	while counter > 0
		array.each_index do |i|
			value = yield array[i-1], array[i]
			if value > 0
				array[i-1], array[i] = array[i], array[i-1]
			end
		end
		counter -= 1
	end
	p array
end

array_word = ['hi', 'hello', 'hey']
bubble_sort_by array_word do |left,right|
left.length - right.length
end
