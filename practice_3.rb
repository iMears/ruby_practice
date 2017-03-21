a = 5
puts "guess a number"
b = gets.chomp.to_f
if b < 5 then
	puts "too low"
end
if b >5 then
	puts "too high"
end 

if a == b then
	puts "THATS RIGHT!!!"
end

