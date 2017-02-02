require 'towers'

describe 'Towers of Hanoi' do
  subject(:game) { Towers.new }
  let(:disc1) {double}

  describe '#initialize' do
    it 'Sets default state of the game' do
      expect(game.towers).to eq( [[3, 2, 1], [], []] )
    end
  end

  describe 'Towers#won?' do
    it 'returns false when game isn\'t won' do
      expect(game.won?).to be_falsey
    end

    let(:won_game) { Towers.new([[], [3, 2, 1], []]) }
    it 'returns true when game is won' do
      expect(won_game.won?).to be_truthy
    end
  end

  let(:move_test) { Towers.new([[3], [2], [1]]) }

  describe 'Towers#valid_move' do
    it 'return true if smaller piece placed on larger piece' do
      expect(move_test.valid_move?(2, 0)).to be_truthy
    end

    it 'return false if larger piece placed on smaller piece' do
      expect(move_test.valid_move?(0, 2)).to be_falsey
    end

    it 'does not allow move from empty spot' do
      expect(game.valid_move?(2, 0)).to be_falsey
    end
  end

  describe 'Towers#display' do
    it 'shows the board as text' do
      expect(game.display).to eq("[[3, 2, 1], [], []]")
    end
  end

  describe 'Towers#move' do
    it 'updates @towers member variable' do
      game.move(0,1)
      expect(game.towers).to eq([[3, 2], [1], []])
    end
  end
end
