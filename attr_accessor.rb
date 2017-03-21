# RECALL 
# attr_accessor allows you to do this


class Person
	attr_accessor :name, :age
end

x = Person.new
x.name = "Fred"
x.age = 12
puts x.name, x.age

#however, in reality attr_accessor is equivalent to...


class Person
	def name
		@name
	end

	def name= (name)
		@name = name
	end

	def age
		@age
	end

	def age= (age)
		@age = age
	end
end

y = Person.new
y.name = "Savannah"
y.age = 22
puts y.name, y.age


y.name = "Yo Mama"
y.age = 1000 
puts y.name, y.age
