def english_number number
	if number < 0 #no negative numbers
		return("please enter a number that isn\'t 0")
	end

	if number == 0
		return("zero")
	end

	#no more special cases! No more returns!

	num_string = '' #this is the string that we will return

	ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

	tens_place = ["ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]

	teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]


	#"left" is how much of the number we still have to write out
	#"write" is the part we are writing out right now

	left = number
	write = left/100            #how many hundreds left?
	left =  left - write * 100  #subtract off those hundreds

	if write > 0
		#here is the recursion:
		hundreds = english_number write 
		num_string = hundreds + 'hundred'

		if left > 0
			#so we don't write 'two hundredfifty-one'
			num_string = num_string + ' '
		end
	end

	write = left/10              #how many tens left?
	left = left - write*10       #subtract off those tens

	if write > 0
		if ((write == 1) and (left > 0))
			#since we cant write "ten-two" instead of "twelve", we have
			#to make a special exeption for these
			num_string = num_string + teenagers[left-1]
			#since we took care of the digit in the "ones" place already,
			#we have nothing left to write.
			left = 0
		else
			num_string = num_string + tens_place[write-1]
		end

		if left > 0
			# so we don't write 'sixtyfour'...
			num_string = num_string +'-'
		end
	end

	write = left #How many ones left to write out?
	left = 0     ## Subtract off those ones.

	if write > 0
		num_string = num_string + ones_place[write-1]
		#the "-1" is because ones_place[3] is 'four' not 'three'
	end

	#now we just write out num_string
	num_string
end

puts english_number(0)
puts english_number(55)
puts english_number(222)
puts english_number(457)