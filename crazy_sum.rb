


def crazy_sum(numbers)
	sum = 0
	i = 0
	numbers.each do |x|
		sum = sum + (x * i)
		i += 1
	end
	return sum
end
puts crazy_sum([2, 3, 5])

