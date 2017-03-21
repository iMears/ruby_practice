class Person
	def initialize(name, age, gender)
		@name = name 
		@age = age
		@gender = gender
	end


	def to_s 
	 	print("Name: ", @name, " \n")
	 	print("Age: ", @age, " \n") 
	 	print("Gender: ", @gender, "\n")
	end


	def birthday(month)
	 	@age += (1 + "#{month}".to_i)
	end


end

p1 = Person.new("Max Mears", 25, "M")
p2 = Person.new("Peggy Darloington", 56, "F")
p3 = Person.new("Holly Zander", 21, "F")
p4 = Person.new("Valerie Fisher", 55,"F")
p5 = Person.new("Tony Novak", 30, "F")

puts " "

p1.birthday(8)
p1.to_s



p p1
p p1







def each_vowel(&code_block)
	%w{a e i o u}.each { |vowel| code_block.call(vowel) }
end
each_vowel { |vowel| puts vowel }
