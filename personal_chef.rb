require 'date'
today = Date.today.strftime("%A")
day_of_year = Date.today.yday

class PersonalChef
	meals= []
	def game_plan(meals)
		meals.each do |x|
			puts("i love to eat #{x}")
		end
	end

	def make_toast(color)
		puts "making your toast #{color}"
		return self
	end

	def make_milkshake(flavor)
		puts "making your milkshake #{flavor}"
		return self
	end

	def make_eggs(quantity)
		quantity.times do 
			puts "making an egg"
		end
		puts "im done"
		return self
	end

	def good_morning
		puts("Happy #{today}! It's day #{day_of_year} of the year.")
	end
end #PersonalChef


class Butler
	def open_front_door
		puts "opening front door"
	end

	def open_door(which)
		puts "opening #{which} door"
	end

	def make_the_bed
		puts "making the bed sir"
	end
end #Butler


#####END CLASSES AND DEFINITIONS#######
puts
frank = PersonalChef.new
frank.game_plan("chicken", "beef")