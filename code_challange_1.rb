


#def pow(base,exponent,num)
#	puts("#{num}")
#	exponent.times do |x|
#		puts "x #{base}"
#	end
#end
#
#pow(2,3,1)



#def pow(base,exponent,num)
#	i=1
#	exponent.times do |x|
#		i = i * base 
#	end
#
#
#	puts("#{num}")
#	exponent.times do |x|
#		puts "x #{base}"
#
#	end
#	return i
#end
#
#puts pow(2,3,1)



#puts("enter a base number:")
#number1 = gets.to_f
#puts("enter a exponent number:")
#number2 = gets.to_i
 
# def pow(base,exp)
# 	puts("pow(#{base},#{exp})")
# 	if exp == 0
# 		1
# 	else
#	 	pow(base, exp-1) * base
#	 end
# end

#puts pow(number1, number2)



#def sum(array)
#	run = 0
#	array.each do |x|
#		run = run + x
#	end
#	return run
#end
#
#numbers = [1,2,3,4,5,6,7,8,9,10]
#x = sum(numbers)
#puts "the result is #{x}"


def is_prime?(num)
	(2..num-1).each do |x|
		if num % x == 0
			return false
		end
	end
	return true
end

puts("enter a number:")
value = gets.to_i
puts("this is a prime number... #{is_prime?(value)}")	

