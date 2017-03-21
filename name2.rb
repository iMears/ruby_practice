class Name
	def initialize(first, middle, last)
		@first = first
		@middle = middle
		@last = last
	end

	#def first=(new_first)
	#	@first = new_first
	#end

	#def middle=(new_middle)
	#	@middle = new_middle)
	#end

	#def last=(new_last)
	#	@last = new_last)
	#end
	attr_reader :first, :middle, :last
	attr_writer :first, :middle, :last


	def to_s
		print(@last +", " +@first+ " " + @middle)
	end
end

somename = Name.new("Maxwell", "Griffin", "Mears")
somename.first = "Max"
somename.middle = "jose"
somename.last = "gonzalez"

print somename.first + " "
print somename.middle + " "
print somename.last + " \n"
