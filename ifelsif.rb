#if comparison
#	statments
#elsif comparison
#	statments
#elsif comparison
#	statments
#else
#	statments
#end



puts ("what % did you get on the test?")
grade = gets.to_i 


if grade >= 90
	grade = ("A")
elsif grade >= 80
	grade = ("B")
elsif grade >= 70
	grade = ("C")
elsif grade >= 60 
	grade = ("D")
else grade < 60 
	grade = ("F")
end

print("you got a '#{grade}' on the test.\n")
