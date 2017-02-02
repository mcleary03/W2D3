class Towers
  attr_reader :towers
  def initialize(towers=nil)
    @towers = towers || [[3, 2, 1], [], []]
  end

  def play
    until won?
      get_move
    end
    puts "Congratulations! You win!!!"
  end

  def get_move
    puts "Pick from a pile:\n>>"
    from = gets.chomp.to_i
    puts "Pick a pile to place disk in:\n>>"
    to = gets.chomp.to_i
    if valid_move?(from, to)
      move(from, to)
    else
      puts "Invalid move, try again"
      return
    end
  end

  def valid_move?(from, to)
    !@towers[from].empty? && @towers[from].last < @towers[to].last
  end

  def move(from, to)
    @towers[to] << @towers[from].pop
  end

  def won?
    @towers[0].empty? && (@towers[1].empty? || @towers[2].empty?)
  end

  def display
    p @towers.inspect
  end
end
