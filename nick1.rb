class Personal_chef
	def make_milkshake(flavor)
		puts("making the milkshake #{flavor}.")
	end

	def make_eggs(quantity)
		puts("making #{quantity} eggs for you sir..")
	end
end



frank = Personal_chef.new
frank.make_milkshake("chocolate")
frank.make_eggs(9)