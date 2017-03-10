def rotate_matrix(matrix)
  result = []
  j = 0
  while j < matrix.length
    i = 0
    row = []
    while i < matrix.length
      row << matrix[i][j]
      i += 1
    end
    result << row
    j += 1
  end
  result
end

# O(n^2)

print rotate_matrix([[1,2], [3,4]])
