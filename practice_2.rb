puts "hello! what is your name?"
name = gets
name = name.chomp 
puts "#{name} is a good name, I like that name! What is your favorite number?"
num = gets.to_i
newnum = num + 1
puts "oh..#{num}...I don't like that number! How about #{newnum} thats a nice number!?(y,n)"
answ = gets
answ = answ.chomp
if answ == "y"
	puts "you made a good choice.. nobody likes #{num} anyways! so.. whats your favorite color?"
	num += 1
	color = gets
elsif answ == "n"
	puts "well okay then.. at least i tried! now.. whats your favorite color?"
	color = gets
else puts "invalid entry, try agian!"
	exit
end
puts "that's crazy! i love all colors but #{color} is also my favorite! how old are you?"
age = gets.to_i
puts "wow.. i remember when i was #{age} years old! just wait.. in the blink of an eye you will\n be #{age+1} years old! how is your day going? (good,bad)"
day = gets
day = day.chomp
if day == "good"
	puts ("im glad to hear that. would you like to ask how my day is going?(y,n)")
elsif day == "bad" 
	puts ("im sorry to hear that. would you like to ask how my day is going?(y,n)")
else puts "invalid entry.. try again!"
	exit
end
answ2 = gets
answ2 = answ2.chomp
if answ2 == "y"
	puts ("well i had a very lovely day, thank you for asking. ")
	answ2 = "yes"
elsif answ2 =="n"
	puts ("thats not very nice! but i forgive you because we're friends. ")
	answ2 = "no"
else puts ("invalid entry... try again!")
	exit
end
puts
puts ("name: #{name}")
puts ("age: #{age}")
puts ("number: #{num}")
puts ("color: #{color}")
puts ("day: #{day}")
puts ("manners: #{answ2}")


