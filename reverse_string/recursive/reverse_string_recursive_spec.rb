require_relative 'reverse_string_recursive'

describe '#reverse_string_recursive' do
  it 'returns nil when input is empty string' do
    expect(reverse_string_recursive('')).to be(nil)
  end

  it 'returns char when string length is 1' do
    expect(reverse_string_recursive('a')).to match('a')
  end

  it 'returns reversed string when string length is 2' do
    expect(reverse_string_recursive('ab')).to match('ba')
  end


  it 'returns reversed string when string length is 3' do
    expect(reverse_string_recursive('abc')).to match('cba')
  end

  it 'returns reversed string when string length is 6' do
    expect(reverse_string_recursive('abcdefg')).to match('gfedcba')
  end
end