class Node
  attr_reader :data
  attr_accessor :next

  def initialize(data, next_link = nil)
    @data = data
    @next = next_link
  end
end