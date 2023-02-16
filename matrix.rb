def find_special_numbers(matrix)
  special_numbers = []
  # iterate through each row of the matrix
  matrix.each_with_index do |row, i|
    # find the maximum number in this row
    max_in_row = row.max
    # find the column index of the maximum number in this row
    max_in_row_index = row.index(max_in_row)
    # check if this number is also the minimum number in its column
    if (0...matrix.length).all? { |j| matrix[j][max_in_row_index] >= max_in_row }
      special_numbers << max_in_row
    end
  end
  return special_numbers
end
