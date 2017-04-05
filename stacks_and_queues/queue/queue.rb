class Queue
  def initialize(max_size = 5)
    @queue = []
    @max_size = max_size
  end

  def enqueue(item)
    raise 'FullQueue' if full?

    @queue.push(item)
  end

  def dequeue()
    raise 'EmptyQueue' if empty?

    @queue.shift()
  end

  def size
    @queue.length
  end

  def full?
    @queue.size == @max_size
  end

  def empty?
    @queue.size == 0
  end
end
