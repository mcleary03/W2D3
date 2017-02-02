def stock_picker(prices)
  raise ArgumentError unless prices.is_a?(Array)

  pair = []
  max_profit = 0

  (0...prices.length).each do |i|
    (i + 1...prices.length).each do |j|
      profit = prices[j] - prices[i]

      if profit > max_profit
        pair = [i, j]
        max_profit = profit
      end
    end
  end

  pair
end
