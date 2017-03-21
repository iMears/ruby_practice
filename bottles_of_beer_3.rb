puts "How Many Bottles of Beer do you have?"

count = gets.to_i

until count == 0 do

	puts "#{count} Bottles of beer on the wall, #{count} Bottles of beer, \n You take one down, Pass it around... \n #{count-1} Bottles of beer on the wall"
	count -=1
	
end
	
if count = 0 then
  puts "You Ain't got no mo BOTTLES!"
end

puts "Do You want to keep drinking?"
if yes = gets
   10.downto(1) do|counter|
     puts counter
     sleep 1
   end
   puts
   puts "Blastoff"
 end
if no = gets
   puts "Fine...be that way"
 end

	