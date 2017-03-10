def zero_matrix(matrix)
  result = []
  i = 0
  while i < matrix.length
    j = 0
    while j < matrix[0].length
      if matrix[i][j] == 0
        row = i
        col = j
      end
      j += 1
    end
    i += 1
  end

  i = 0
  while i < matrix.length
    j = 0
    layer = []
    while j < matrix[0].length
      if i == row || j == col
        layer << 0
      else
        layer << matrix[i][j]
      end
      j += 1
    end
    result << layer
    i += 1
  end

  result
end

# O(n^2)

print zero_matrix([[1, 2, 3], [4, 0, 5]])
