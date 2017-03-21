class PersonalChef
	
	def make_toast(temp)
		puts("making toast... #{temp}")
		return self
	end

	def make_milkshake(flavor)
		puts("making that #{flavor} milkshake")
		return self
	end

	def make_eggs(quantity)
		puts("making you #{quantity} eggs.")
		return self
	end

	def make_bacon(how)
		puts("i will make your bacon extra #{how}!")
		return self
	end	
end

macgyver = PersonalChef.new
macgyver.make_bacon("soggy").make_eggs(8).make_toast("burnt").

