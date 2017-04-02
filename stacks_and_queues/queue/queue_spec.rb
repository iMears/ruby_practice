require_relative 'queue'

describe 'Queue' do
  let(:queue) { Queue.new }

  describe '#initialize' do
    it 'is an instance of Queue' do
      expect(queue).to be_an_instance_of(Queue)
    end

    it 'initializes to an empty queue' do
      expect(queue.size).to be(0)
    end
  end

  describe '#enqueue' do
    it 'adds an item to the back of the queue' do
      queue.enqueue('foobar')

      expect(queue.size).to be(1)
    end

    it 'returns the queue' do
      result = queue.enqueue('foobar')

      expect(result).to match(['foobar'])
    end
  end

  describe '#dequeue' do
    it 'removes an item from the front of the queue' do
      queue.enqueue('baz')
      queue.enqueue('foobar')
      result = queue.dequeue()

      expect(result).to match('baz')
    end
  end

  describe '#size' do
    it 'returns correct size of queue' do
      queue.enqueue('foobar')
      queue.enqueue('baz')

      expect(queue.size).to be(2)
    end
  end
end