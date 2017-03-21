class Animal
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

class Cat < Animal
	def talk
		"Meow!"
	end
end

class Dog < Animal
	def talk
		"Woof!"
	end
end

animals = [Cat.new("fluffy"), Dog.new("spike"), Cat.new("ocho")]
animals.each do |x|
	puts x.talk
end
