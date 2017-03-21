class Employee
	def initialize(name, payrate)
		@name = name
		@payrate = payrate
	end

	def name
		return @name
	end


	def pay(hours)
		return @payrate * hours
	end
end
 
class Manager < Employee
	def initialize(name, payrate, salaried)
		super(name, payrate)
		@salaried = salaried
	end

	def pay(hours)
		if @salaried
			return @payrate
		else
			return @payrate * hours
		end
	end
end


e1 = Employee.new("Lexi - ", 20)
print(e1.name, "pay: ", e1.pay(40), "\n")
e2 = Employee.new("Elizabeth - ", 30)
print(e2.name, "pay: ", e2.pay(40), "\n")
m1 = Manager.new("Savannah - ", 1200, true)
print(m1.name, "pay: ", m1.pay(0), "\n")
m2 = Manager.new("Gina - ", 40, false)
print(m2.name, "pay: ", m2.pay(40), "\n")
m3 = Manager.new("Sabrina - ", 2500, true)
print(m3.name, "pay: ", m3.pay(0), "\n")

