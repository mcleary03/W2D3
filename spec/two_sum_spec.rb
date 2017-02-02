require 'two_sum'

describe '#two_sum' do
  subject(:test_array) { [-1, 0, 2, -2, 1] }
  
  it 'finds all pairs of positions where the elements at those positions sum to zero' do
    expect(test_array.two_sum).to include([2,3], [0,4])
  end

  it 'finds pairs in order (smaller index first)' do
    expect(test_array.two_sum).to eq([[0,4], [2,3]])
  end
end
