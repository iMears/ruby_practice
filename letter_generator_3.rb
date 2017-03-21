require 'csv'

def generate_letter(name, gift, age, your_name)
	puts
	puts
	puts "Dear #{name}, "
	puts 
	puts "Thank you for the #{gift}."
	puts "I really like it. I can't believe "
	puts "that i'm already #{age} years old!"
	print ("Being #{age} years old feels just like im still #{age.to_i-1}.")
	puts 
	puts
	puts "Love always..."  
	puts "- #{your_name}"
end

CSV.foreach("birthday.csv", :headers => true) do |row|
  generate_letter(row['their name'], row['present'], row['your age'], row['your name'])
end
