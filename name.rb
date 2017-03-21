class Name
	def initialize(first, middle, last)
		@first = first
		@middle = middle
		@last = last
	end
	def first
		@first
	end
	def middle
		@middle
	end
	def last
		@last
	end


	def to_s
		print(@last +", " +@first+ " " + @middle)
	end
end

somename = Name.new("Maxwell", "Griffin", "Mears")
puts somename.to_s
puts ("first name: " + somename.middle.next.next)
