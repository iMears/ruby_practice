puts "What's the temperature outside, in celsius"

var = gets.chomp
var = var.to_i * 9/5 +32
print "It is ", var, " Degrees Farenheit..." #fixed problem with print function instead of puts 

#check out what i added......

if var > 65 then 
	puts " It's a warm day!!\n\n"

end

if var < 65 then
	puts " It's a cool day!!\n\n"
end

#also new.....


puts "what is your name?"
name = gets
puts "how old are you?"
age = gets
puts "how much do you weigh?"
weight = gets

puts "here is the information you provided:\n" 
puts "Name: " + name.capitalize
puts "Age: " + age
puts "Weight: " + weight



