class Stack
  attr_reader :max_size

  def initialize(max_size = 3)
    @stack = []
    @max_size = max_size
  end

  def push(item)
    raise 'full stack' if full?

    @stack.push(item)
  end

  def pop()
    raise 'empty stack' if empty?

    @stack.pop
  end

  def size
    @stack.length
  end

  def full?
    @stack.length >= @max_size
  end

  def empty?
    @stack.length == 0
  end
end