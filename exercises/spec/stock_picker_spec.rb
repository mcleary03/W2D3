require 'stock_picker'

describe '#stock_picker' do
  let(:prices) { [1, 2, 3] }
  let(:solution) { [0, 2] }

  it 'raises an error if input isn\'t an array' do
    expect { stock_picker("wrong input") }.to raise_error(ArgumentError)
  end

  it 'outputs an array' do
    expect(stock_picker(prices)).to be_a(Array)
  end

  it 'returns empty array if given an empty array' do
    expect(stock_picker([])).to eq([])
  end

  it 'returns a pair of Numerics' do
    expect(stock_picker(prices)).to all (be_a(Numeric))
  end

  it 'returns the correct pair' do
    expect(stock_picker(prices)).to eq(solution)
  end

  it 'returns empty array if prices always decrease'
end
