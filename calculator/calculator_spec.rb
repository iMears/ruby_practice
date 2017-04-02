require_relative 'calculator'

describe 'Calculator' do
  let(:calculator) { Calculator.new }
  it 'is a calculator' do
    expect(calculator).to be_an_instance_of(Calculator)
  end

  describe '#add' do
    it 'adds two numbers togeather' do
      expect(calculator.add(1, 2)).to eq(3)
    end
  end
end