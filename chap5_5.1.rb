def insertion(n, m, j, i)
  all_ones = 255 # create sequence of 1s
  left = all_ones << (j + 1) # creates sequence of 0s from position j through position 0
  right = (1 << i) - 1 # creates sequence of 1s after position i
  mask = left | right # creates a sequence of 1s, followed by sequence of 0s, followed by sequence of 1s
  n_cleared = n & mask # clears n from positon j through positon i
  m_shifted = m << i # moves m to correct position by adding i 0s at the end
  n_cleared | m_shifted
end

puts insertion(150, 7, 5, 3).to_s(2)
