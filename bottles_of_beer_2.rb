puts "how many bottles do you have?"

count = gets.to_i

until count == 0 do

	puts "#{count} bottles of beer on the wall, #{count} bottles of beer, \n take one down pass it around... #{count2} bottles of beer on the wall"
	count -= 1 

end


if count = 0 then
	puts "you aint got no more bottles son!!"

end
puts "do you want to keep drinking?"

answer = gets.to_s

while answer = "yes" do
	puts "#{count} bottles of beer on the wall, #{count} bottles of beer, \n take one down pass it aound, #{count-1} bottles of beer on the wall"

end

while answer = "no" do
	puts "suck it up...pussy!"

end