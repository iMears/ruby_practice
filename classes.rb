# CLASSES: CLASS ATTRIBUTES
#
#Global		$variable
#Class 		@@variable
#Instance	@variable
#Local		variable
#Block		variable

class Animal
	attr_accessor :name
	attr_writer :color
	attr_reader :legs, :arms

	@@species = ['cat', 'cow', 'dog', 'duck', 'horse', 'pig']
	@@current_animals = []
	
	def self.species
		@@species
	end

	def self.species=(array=[])
		@@species = array
	end

	def self.current_animals
		@@current_animals
	end

	def self.create_with_attributes(noise, color)
		animal = self.new(noise)
		animal.color = color
		return animal
	end

	def initialize(noise, legs=4, arms=0)
		@noise = noise
		@legs = legs
		@arms = arms
		@@current_animals << self
		puts "A new animal has been instanciated."
	end

	def noise=(noise)
		@noise = noise
	end

	def noise
		@noise
	end

	def color
		"the color is #{@color}"
	end
end

class Cow < Animal
	def make_eggs(quantity)
		quantity.times do |x|
			puts "making egg number #{x}"
		end
	end
end


Animal.species = ['frog', 'fish']
puts Animal.species.inspect

animal1 =Animal.new("Moo!", 4, 0)
animal1.name = "Steve"
puts animal1.name
animal1.color = "black"

puts animal1.color
puts animal1.legs
puts animal1.noise

animal2 = Animal.create_with_attributes("Quack!", "white")
puts animal2.noise
puts animal2.color

puts Animal.current_animals.inspect

maisie = Cow.new('Moo!')
puts maisie.noise

puts animal1.class
puts maisie.class
maisie.make_eggs(15)