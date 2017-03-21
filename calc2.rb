
 def pow(base,exp)
 	puts("pow(#{base},#{exp})")
 	if exp == 0
 		1
 	else
	 	pow(base, exp-1) * base
	 end
 end


print("ok nick.. here is a simple calculator program. would you like to use it?\n")
answer = gets
answer = answer.chomp
if answer != "yes"
		print("your not cool enough to use my calculator anyways!!\n")
		exit
	end
end

go =1 
while go ==1

puts("enter a number:")
number1 = gets.to_f
	puts("enter another number:")
	number2 = gets.to_f
	puts("what do you want to do with these numbers? (+,-,/,*)")
	op = gets
	op = op.chomp
	print("the answer is: ")
	case op
		when "^"
			puts pow(number1, number2.to_i)
		when "+"
			puts(number1 + number2)
		when "-"
			puts(number1 - number2)
		when "/"
			puts(number1 / number2)
		when "*"
			puts(number1 * number2)
		end

	end 

puts("\nwould you like to calcuale some more numbers?")
answer = gets
answer = answer.chomp
if answer2 != "no"
	go=0
end 




