#case expression 
# 	when expression1
# 		statements
# 	when expression2
#       statements
#   when expression3
#       statements
#   else
#        statements
#end

puts("enter a score:")
grade = gets.to_i
case grade
	when 90..100
		lettergrade = "A"
	when 80..90
		lettergrade = "B"
	when 70..80
		lettergrade = "C"
	when 60..70
		lettergrade = "D"
	when 0..59
		lettergrade = "F"
	when -1000..0
		lettergrade = "invalid"
		
	when 101..1000000000 
		lettergrade = "invalid"
end

print("the letter grade is: #{lettergrade}\n")