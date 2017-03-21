def generate_letter(name, gift, age, your_name)
	puts
	puts
	puts "Dear #{name},"
	puts 
	puts "Thank you for the #{gift}."
	puts "I really like it. I can't believe "
	puts "that i'm already #{age}.to_s years old!"
	print ("Being " + age.to_s + " years old feels just like im still " + (age-1).to_s + ".")
	puts 
	puts
	puts "Love always..."  
	puts "- " + your_name
end

print "what is the name of the gift giver?"

name = gets
name = name.chomp
print "what present did they give you?"
present = gets
present = present.chomp
print "how old were you on your birthday?"
age = Integer(gets)
print "what is your name?"
your_name = gets
your_name = your_name.chomp
generate_letter(name, present, age, your_name)
