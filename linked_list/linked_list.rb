require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = Node.new(nil)
  end

  def add(data)
    current = @head

    while current.next
      current = current.next
    end

    new_node = Node.new(data)
    current.next = new_node
  end

  def find(data)
    current = @head

    while current.next
      if current.next.data === data
        return current.next
      else
        current = current.next
      end
    end

    nil
  end

  def find_previous(data)
    current = @head

    while current.next
      if current.next.data === data
        return current
      else
        current = current.next
      end
    end

    nil
  end

  def remove(data)
    node = find_previous(data)

    if node.next
      node.next = node.next.next
    else
      raise "not found."
    end
  end

  def insert(data, index)
    i = 0
    current = @head
    while current.next && i < index
      current = current.next
      i += 1
    end

    next_node = current.next
    current.next = Node.new(data)
    if next_node
      current.next.next = next_node
    end
  end

  def inspect
    current = @head
    results = []
    while current.next
      results << current.data
      current = current.next
    end

    results
  end
end