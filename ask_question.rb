def ask(question)
	while true
		puts question
		reply = gets.chomp.downcase

		if (reply == "yes" || reply == "no")
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
end

ask("are you having a nice day?")

if false
	puts('its true')
elsif true
	puts('its false')
else 
	puts("we have a problem")
end




