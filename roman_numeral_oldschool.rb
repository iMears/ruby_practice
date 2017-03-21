
def old_school_roman_numeral(num)
puts ('enter a number to convert: ')
num = gets.chomp.to_i

	if num.to_i < 5
		puts ("I") * num.to_i
	elsif num.to_i >= 5 && num.to_i < 10
		puts ("V") + (("I") * (num.to_i - 5).to_i)
	elsif num.to_i >= 10 && num.to_i < 15
		puts ("X") + (("I") * (num.to_i - 10).to_i) 
	elsif num.to_i >= 15 && num.to_i < 20
		puts ("XV") + (("I") * (num.to_i - 15).to_i)
	elsif num.to_i >= 20 && num.to_i < 25
		puts ("XX") + (("I") * (num.to_i - 20).to_i)
	else 
		puts ('we have a problem')
	end
end

old_school_roman_numeral(4)