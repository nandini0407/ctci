def check_permutation(str1, str2)
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

    count1 == count2
end

puts check_permutation('abcd', 'dabc')
puts check_permutation('abcddd', 'dabc')
