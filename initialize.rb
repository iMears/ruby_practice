class Buissness
	def initialize(x, y)
		@name = x
		@address = y
	end
	attr_accessor :name, :address

	def print_greeting(mesg)
		puts mesg
	end 
end

Buissness.new("Maxwell Mears", "2177 Bunker Hill Dr. San Mateo CA 94402")
Buissness.print_greeting("hey there")
    


