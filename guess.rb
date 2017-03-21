



answer = ("shark\n")
puts("let's play a guessing game, you get three tries...")
puts("what is the name of my dog? 'hint.. named after an ocean animal' ")
response = gets
if response == answer
	puts("that's right.. good job first try!!")
else puts("sorry try again...")
	response = gets
	if response == answer 
		puts("that's right.. pretty good, second guess!!")
	else puts("sorry.. still not it... keep trying..")
		response = gets
		if response == answer
			puts("that's right! you got it on the last try!")
		else puts("sorry but... YOU LOOSE!! the answer is: shark")
		end
	end
end
