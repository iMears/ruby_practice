x = ['aa','b', 'cc', 'd']


joined_singles = ""
x.each do |item| 
	if item.size <= 1 then 
		joined_singles +=  "#{item}.."
	end
end



puts joined_singles




