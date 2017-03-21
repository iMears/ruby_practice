5.times do puts "test"
	end

1.upto(17){puts("test2")}

5.downto(-3){puts("test3")}

3.upto(5){|number|puts number}
4.upto(12){|number| puts number}

0.upto(10) do |x|
	puts x
end

puts "Hello, world".class
puts 6.class

x = []
x << "Word"
x << "Play"
x << "Fun"
puts x
puts x.pop
puts x.pop
puts x
puts x = ["happy", "day", "today"]
puts x.pop
puts x.pop
puts x.length
x << "face"
x << "please"
x = x.join("-")
print x

7.times do |x|
	puts x +("")
end

if x == "happy-face-please"
	puts("yes"*20)
end



