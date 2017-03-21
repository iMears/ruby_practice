class Pets
	attr_accessor :age, :name, :color, :weight, :length, :width
end

class Snake<Pets
end

class Dog<Pets
end

class Mouse<Pets
end

snake = Snake.new
snake.age = 67
snake.name =("jamal")
snake.color =("purple")
snake.weight =(20)
snake.length =(10)
snake.width =(2)

puts snake.inspect