def add(n1,n2)
	return n1 + n2
end

def sub(n1,n2)
	return n1 + n2
end

def mult(n1,n2)
	return n1 + n2
end

def div(ni,n2)
	return n1 + n2
end


puts("Enter an operation: +, -, *, /")
op = gets
op = op.chomp

puts("Enter a number:")
num1 = gets.to_f
puts("Enter another number")
num2 = gets.to_f

if op == '+'
	puts("Your answer is: " + add(num1,num2).to_s)
elsif op == '-'
	puts(sub(num1,num2))
elsif op == '*'
	puts(mult(num1,num2))
elsif op == '/'
	puts(div(num1,num2))
else 
	puts("You entered a invaled operation")
end
