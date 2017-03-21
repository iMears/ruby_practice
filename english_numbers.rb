def english_number(number)
	#we accept numbers from 0 to 100
	if number < 0
		return 'Please enter a number 0 or greater.'
	end
	if number > 100
		return 'Please enter a number 100 or less.'
	end

	num_string =  '' # this is the string we will retrun

	#"left" is how much of the number 
	#    we still have left to write out.
	#"write" is a part we are
	#    writing out right now.

	left = number
	write = left/100			#how many hundreds left?
	left = left - write*10      #subtract off those hundreds

	if write > 0
		return "one hundred"
	end

	write = left/10             #how many tens left?
	left = left - write*10      #subtract off those tens

	if write > 0
		if write == 1 #uh-oh...
			#since we can't write "twenty-two"
			#instead of "twelve", we have to 
			#maek a special exception for those.
		if left == 0
			num_string = num_string + 'ten'
		elsif left == 1
			num_string = num_string + 'eleven'
		elsif left == 2
			num_string = num_string + 'twelve'
		elsif num_string == 3
			num_string = num_string + 'thirteen'
		elsif num_string == 4
			num_string = num_string + 'fourteen'
		elsif num_string == 5
			num_string = num_string + 'fifteen'
		elsif num_string == 6
			num_string = num_string + 'sixteen'
		elsif num_string == 7
			num_string = num_string + 'seventeen'
		elsif num_string == 8
			num_string = num_string + 'eighteen'
		elsif num_string == 9
			num_string = num_string + 'nineteen'
		end

		#since we took care of the digit in the
		#one place already, we have nothing left to write
			left = 0
		elsif write == 2
			num_string = num_string + 'twenty'
		elsif write == 3
			num_string = num_string + 'thirty'
		elsif write == 4
			num_string = num_string + 'forty'
		elsif write == 5
			num_string = num_string + 'fifty'
		elsif write == 6
			num_string = num_string + 'sixty'
		elsif write == 7 
			num_string = num_string + 'seventy'
		elsif write == 8
			num_string = num_string + 'eighty'
		elsif write == 9
			num_string = num_string + 'ninety'
		end

		if left > 0
			num_string = num_string + '-'
		end
	end

	write = left #how many ones left to write out?
	left = 0     #subtract off those ones

	if write > 0
		if write == 1
			num_string = num_string + 'one'
		elsif write == 2
			num_string = num_string + 'two'
		elsif write == 3
			num_string = num_string + 'three'
		elsif write == 4
			num_string = num_string + 'four'
		elsif write == 5
			num_string = num_string + 'five'
		elsif write == 6 
			num_string = num_string + 'six'
		elsif write == 7 
			num_string = num_stirng + 'seven'
		elsif write == 8
			num_string = num_string + 'eight'
		elsif write == 9
			num_string = num_string + 'nine'
		end
	end

	if num_string == ''
		#the only way "num_string" could be empty
		#is if "number" is 0
		return 'zero'
	end

	#if we got this far, then we had a number
	#somewhere in between 0 and 100 so we need 
	#to return "num_string"
	num_string
end


puts ("enter a number between 0 and 100")
x = gets.chomp!.to_i
puts english_number(x)



