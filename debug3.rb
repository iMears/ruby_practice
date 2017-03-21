require 'pry'


# 0 1 1 1 2 3 5 8 13 21 24

t1 = 0
t2 = 1
n = 10
print(0, " ", 1, " ")
while n > 0
	t = t1 + t2
	print(t, " ")
	binding.pry
	temp = t2
	t2 = t
	t1 = temp
	# n -= 1

end
