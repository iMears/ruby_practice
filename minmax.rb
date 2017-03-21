#Picks the max and min of random numbers


nums = []
i = 0
while i < 10
	nums[i] = rand(101)
	i += 1
end
puts (nums)
puts
max = nums[0]
for i in 1..9
	if nums[i] > max 
		max = nums[i]
	end
end

puts ("Maximum value is: " + max.to_s)


min = nums[0]
for i in 1..9
	if nums[i] < min
		min = nums[i]
	end
end
puts ("Minimum value is: " + min.to_s)