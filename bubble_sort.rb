def bubble_sort arr
	if arr.size <= 1; p arr #prints [2] if arr = [2], prints [] if arr = []
	else
		sorted = true
		while sorted #'while loop' starts here
			sorted = false #'while loop' ends when if condition in line 8 is not met
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


array = [4,3,78,2,0,2] 

p bubble_sort array #returns[0,2,2,3,4,78]