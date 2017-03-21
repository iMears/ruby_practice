module ToolBox
	class Ruler
		attr_accessor :length
	end
end

module Country 
	class Ruler
		attr_accessor :name
	end
end

a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Ghengis Khan from Moskau"

puts a.length
puts b.name


module UsefulFeatures
	def class_name
		self.class.to_s
	end
end

class Person
	include UsefulFeatures
end

x = Person.new
puts x.class_name

module AnotherModule
	def do_stuff
		puts "This is a test"
	end
end

include AnotherModule
do_stuff

AnotherModule.do_stuff

[1,2,3,4,5].each {|number| puts number}

my_array = %w{this is a test of the longest word check}
longest_word = ''
my_array.each do |word|
	longest_word = word if longest_word.length < word.length
end
puts longest_word

my_array = %w{10 56 92 3 49 588 18}
highest_number = 0
my_array.each do |number|
	number = number.to_i
	highest_number = number if number > highest_number
end
puts highest_number

puts [1,2,3,4].collect { |i| i.to_s + "x" }
puts [1,2,3,4].detect { |i| i.between?(2,3) }
puts [1,2,3,4].select {|i| i.between?(2,3) }
print [4,1,3,2].sort 
puts
puts [1,2,3,4].max
puts [1,2,3,4].min


class AllVowels
	include Enumerable
	@@vowels =  %w{a e i o u}
	def each 
		@@vowels.each {|v| yield v}
	end
end


x = AllVowels.new
x.collect {|i| i + "x"}
puts x
x.detect {|i| i > "j"}
puts x










