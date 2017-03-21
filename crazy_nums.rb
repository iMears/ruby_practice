def crazy_nums(max)
	array =[]
	(1..max-1).each do |x|
		if x % 5 == 0 || x % 3 == 0
			if x % 5 != 0 || x % 3 != 0
				array << x
			end
		end
	end
	return array
end


puts crazy_nums(10)