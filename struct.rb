Person = Struct.new(:name, :gender, :age)
tony = Person.new("Tony", "male", 35)
jordan = Person.new("Jordan", "female", 26)
puts tony.age + jordan.age

#same as..

class Person
	attr_accessor :name, :gender, :age

	def initialize(name, gender, age)
		@name = name
		@gender = gender 
		@age = age
	end
end

joe = Person.new("Joe", "male", 77)
mia = Person.new("Mia", "female", 33)
puts mia.age + joe.age
