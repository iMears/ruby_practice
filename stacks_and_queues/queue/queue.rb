class Queue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue()
    @queue.shift()
  end

  def size
    @queue.length
  end
end
