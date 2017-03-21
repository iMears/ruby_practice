

def square_nums(max)
	i = 0
	while i * i < max 
		i += 1
	end
	return i -1
end


puts square_nums(5) == 2
puts square_nums(10) == 3
puts square_nums(25) == 4

