def one_away(str1, str2)
  count1 = Hash.new
  count2 = Hash.new

  str1.chars.each do |c|
    if count1[c]
      count1[c] += 1
    else
      count1[c] = 1
    end
  end

  str2.chars.each do |c|
    if count2[c]
      count2[c] += 1
    else
      count2[c] = 1
    end
  end

  diff = 0
  if str2.length > str1.length
    iter = count2
    other = count1
  else
    iter = count1
    other = count2
  end

  iter.each do |c, count|
    if other[c] != count
      diff += 1
      return false if diff > 1
    end
  end

  true
end

# O(n)

puts one_away('pale', 'ple')
puts one_away('pale', 'bake')
puts one_away('pale', 'bale')
puts one_away('pale', 'pale')
