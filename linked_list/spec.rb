require_relative 'linked_list'
require_relative 'node'

describe 'Node' do
  let(:node) { Node.new('karate kick!') }

  describe '#initialize' do
    it 'makes a new node' do
      expect(node).to be_an_instance_of Node
    end

    it 'has data' do
      expect(node.data).to match('karate kick!')
    end

    it 'has a default nil next' do
      expect(node.next).to be nil
    end
  end

  describe '#next' do
    let(:next_node) { Node.new('a') }

    it 'can set a next node' do
      node.next = next_node
      expect(node.next).to equal(next_node)
    end
  end
end

describe 'linked list' do
  let(:linked_list) { LinkedList.new }
  let(:node) { Node.new(5) }

  describe '#initialize' do
    it 'makes a new linked_list' do
      expect(linked_list).to be_an_instance_of LinkedList
    end

    it 'is empty at head' do
      expect(linked_list.head.data).to be nil
    end
  end

  describe '#find' do
    it 'returns nil if data is not found' do
      expect(linked_list.find(4)).to be nil
    end

    it 'finds a link from data' do
      linked_list.head.next = node

      expect(linked_list.find(5)).to be node
    end
  end

  describe '#add' do
    it 'adds data to the list' do
      linked_list.add(39492)
      expect(linked_list.head.next.data).to equal 39492
    end

    it 'adds data twice to the list' do
      linked_list.add(6)
      linked_list.add(4)

      expect(linked_list.head.next.data).to equal 6
      expect(linked_list.head.next.next.data).to equal 4
    end
  end

  context 'when out of order' do
    it 'can find data after adding multiple' do
      linked_list.add(3)
      linked_list.add(-5)
      linked_list.add(100)

      expect(linked_list.find(100).data).to be 100
      expect(linked_list.find(3).data).to be 3
      expect(linked_list.find(-5).data).to be -5
    end
  end

  describe '#remove' do
    it 'removes a single link' do
      linked_list.add(4)
      linked_list.remove(4)
      expect(linked_list.find(4)).to be nil
    end

    it 'raises an error if it can\'t be found' do
      linked_list.add(4)

      expect{linked_list.remove(5)}.to raise_error
    end
  end

  describe '#insert' do
    it 'can insert into a linked list at a given index' do
      insert_index = 1
      linked_list.add(2)
      linked_list.add(4)
      linked_list.insert(3, insert_index)

      expect(linked_list.find(2).next.data).to be 3
      expect(linked_list.find(3).next.data).to be 4
    end
  end
end