class Pet
	attr_accessor :age, :name, :color, :weight, :length, :width

	def walk(direction)
		puts("i'm now walking #{direction}")
		return self
	end

	def talk(vol, lang)
		puts("now speaking at #{vol} level, and in #{lang}")
		return self
	end

end

class Snake<Pet
	# attr_accessor :gender

	def gender
		puts "returning #{@gender}"
		return @gender
	end

	def gender=(new_gender)
		puts "setting gender to #{new_gender}"
		@gender = new_gender
	end
end

class Dog<Pet
	def bark
		print ("woof")
		return self
	end
end

class Mouse<Pet
end

joe = Mouse.new
joe.walk("forward").talk("medium", "spanish")

puts joe.class

