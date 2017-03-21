class Student
	def initialize(name, id)
		@name = name
		@id = id
		@grades = []
	end 
	def to_s
		puts("name: " + @name)
		puts("id: " + @id)
		print(@grades)
	end

	def addGrade(grade)
		@grades.push(grade)
	end

	def gradeAvg
		total = 0
		for grade in @grades
			total += grade
		end
		return total/@grades.count
	end
end 

s2 = Student.new("Gina Graziano", "1313")
s2.name = "elizabeth"
s2.id = "666"
p s2



s1 = Student.new("Mary Smith", "123")
s1.addGrade(90)
s1.addGrade(80)
puts (s1.to_s)
print("Avg: ") 
puts(s1.gradeAvg)	
