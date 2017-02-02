def my_transpose(array)
  return [] if array.empty?

  transposed = Array.new(array[0].length) { Array.new(array.length) }

  array.each_index do |i|
    array[0].each_index do |j|
      transposed[j][i] = array[i][j]
    end
  end

  transposed
end
