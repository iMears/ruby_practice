print("ok derek.. here is a simple calculator program. would you like to use it?\n")
answer = gets
answer = answer.chomp
if answer == "yes"
	puts("enter a number:")
	number1 = gets.to_f
	puts("enter another number:")
	number2 = gets.to_f
	puts("what do you want to do with these numbers? (+,-,/,*)")
	op = gets
	op = op.chomp
	print("the answer is: ")
	case op
		when "+"
			puts(number1 + number2)
		when "-"
			puts(number1 - number2)
		when "/"
			puts(number1 / number2)
		when "*"
			puts(number1 * number2)

	end 
else print("your not cool enough to use my calculator anyways!!\n")
end

puts("\nwould you like to calcuale some more numbers?")
answer2 = gets
answer2 = answer2.chomp
if answer2 == "yes"
	puts("enter a number:")
	number1 = gets.to_f
	puts("enter another number:")
	number2 = gets.to_f
	puts("what do you want to do with these numbers? (+,-,/,*)")
	op = gets
	op = op.chomp
	print("the answer is: ")
	case op
		when "+"
			puts(number1 + number2)
		when "-"
			puts(number1 - number2)
		when "/"
			puts(number1 / number2)
		when "*"
			puts(number1 * number2)

	end 

else puts("ok fine then")
end





