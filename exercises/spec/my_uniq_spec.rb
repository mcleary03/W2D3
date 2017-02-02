require 'my_uniq'

describe '#my_uniq' do
  subject(:test_array) { [1, 1, 2, 3, 3] }

  it 'returns the unique elements' do
    expect(test_array.my_uniq).to include(2, 3, 1)
  end

  it 'returns elements in the order in which they first appeared' do
    expect(test_array.my_uniq).to eq([1, 2, 3])
  end

end
