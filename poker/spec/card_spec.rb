require 'card'

describe 'Card' do
  subject(:king_spades) {Card.new(13, "spades")}
  describe 'Card#initialize' do
    it 'sets value'
    it 'sets suit'
  end

  describe 'Card#>' do
    let(:c1) {Card.new('King', 'Spades')}
    let(:c2) {Card.new(3, 'Hearts')}

    it 'Returns true when value of self is greater than target card' do
      expect(c1 > c2).to be_truthy
    end
  end

  describe 'Card#==' do

  end

  describe 'Card#name' do
    
  end
end
