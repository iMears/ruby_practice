

def each_vowel(&crap)
	%w{a e i o u}.each { |vowel| crap.call(vowel) }
end



each_vowel do |vowel|
	puts vowel
end



('A'..'Z').to_a.each {|letter| print letter + ("--")}
puts
p ('A'..'Z').include?('r')
p ('A'..'Z').include?('R')

a = [ 2, 4, 6, 8, 10]

a[0..4] = ['A', 'B', 'C', 'D', 'E']
p a.inspect

p a.length