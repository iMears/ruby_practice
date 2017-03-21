require 'csv'

class Letter
	# define the class here
def 
end

CSV.foreach("birthday.csv", :headers => true) do |row|
  letter = Letter.new(row['their name'], row['present'], row['your age'], row['your name'])
  letter.print
end
