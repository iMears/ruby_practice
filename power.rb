puts("enter a base number:")
number1 = gets.to_f
puts("enter a exponent number:")
number2 = gets.to_i
 
 def pow(base,exp)
 	puts("pow(#{base},#{exp})")
 	if exp == 0
 		1
 	else
	 	pow(base, exp-1) * base
	 end
end

puts pow(number1, number2)