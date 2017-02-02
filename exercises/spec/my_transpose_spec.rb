require 'my_transpose'

describe '#my_transpose' do
  subject(:rows) do
    [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]
  end
  let(:transposed) do
    [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ]
  end
  it 'returns empty array when provided an empty array as an argument' do
    expect(my_transpose([])).to be_empty
  end
  it 'transposes the matrix' do
    expect(my_transpose(rows)).to eq(transposed)
  end

  context 'non-matching dimensions' do
    before(:each) do
      rows.map! { |row| row << 1 }
      transposed << [1, 1, 1]
    end

    it 'works with non-matching dimensions' do
      expect(my_transpose(rows)).to eq(transposed)
    end
  end
end
