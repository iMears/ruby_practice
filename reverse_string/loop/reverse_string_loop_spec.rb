require_relative 'reverse_string_loop'

describe '#reverse_string_loop' do
  it 'should return nil when given an empty string' do
    expect(reverse_string_loop('')).to be(nil)
  end

  it 'should return char if string length is 1' do
    expect(reverse_string_loop('a')).to match('a')
  end

  it 'should return reversed string with length 2' do
    expect(reverse_string_loop('ab')).to match('ba')
  end

  it 'should return reversed string with length 3' do
    expect(reverse_string_loop('abc')).to match('cba')
  end

  it 'should return reversed string with length 6' do
    expect(reverse_string_loop('abcdefg')).to match('gfedcba')
  end
end
