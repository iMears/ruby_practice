def getYesNo(question)
	answer = 0
	until answer == "y" || answer == "n"
		puts question.to_s + " y/n"
		answer = gets.chop.downcase.chars.first
	end
	return answer
end

puts "welcome to my test program"

hit = getYesNo("do you want to hit?")
puts hit