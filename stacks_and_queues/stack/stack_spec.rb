require_relative 'stack'

describe 'Stack' do
  let(:stack) { Stack.new }

  describe '#initialize' do
    it 'is instance of Stack' do
      expect(stack).to be_an_instance_of(Stack)
    end

    it 'initializes to an empty stack' do
      expect(stack.size).to be(0)
    end

    it 'initializes with max size of 3' do
      expect(stack.max_size).to be(3)
    end
  end

  describe '#push' do
    it 'pushes an element on the top of the stack' do
      stack.push('foobar')
      stack.push('baz')

      expect(stack.size).to be(2)
    end

    it 'returns the whole stack' do
      stack.push('foobar')
      result = stack.push('baz')

      expect(result).to eq(['foobar', 'baz'])
    end

    it 'raises an error if stack is full' do
      stack.push('foo')
      stack.push('bar')
      stack.push('baz')

      expect{stack.push('foobly')}.to raise_error(RuntimeError, 'full stack')
    end
  end

  describe '#pop' do
    it 'pops an element off the top of the stack' do
      stack.push('foobar')
      stack.pop()

      expect(stack.size).to be(0)
    end

    it 'returns the element that was popped off' do
      stack.push('karate')
      result = stack.pop

      expect(result).to match('karate')
    end

    it 'raises an error if the stack is empty' do
      expect{stack.pop()}.to raise_error(RuntimeError, 'empty stack')
    end
  end

  describe '#size' do
    it 'returns the size of the stack' do
      stack.push('apple')
      stack.push('banana')

      expect(stack.size).to be(2)
    end
  end

  describe '#full?' do
    it 'returns true if stack is at max size' do
      stack.push('apple')
      stack.push('banana')
      stack.push('pear')

      expect(stack.full?).to be(true)
    end

    it 'returns true if stack is at max size' do
      stack.push('apple')

      expect(stack.full?).to be(false)
    end
  end

  describe '#empty?' do
    it 'returns true if stack is empty' do

      expect(stack.empty?).to be(true)
    end

    it 'returns false if stack is not empty' do
      stack.push('apple')

      expect(stack.empty?).to be(false)
    end
  end

end