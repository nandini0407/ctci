def string_compression(str)
  result = []
  count = 0
  i = 0
  while i < str.length - 1
    if str[i] == str[i + 1]
      count += 1
    else
      result.concat([str[i], (count + 1).to_s])
      count = 0
    end
    i += 1
  end

  if str[-1] == str[-2]
    count += 1
    result.concat([str[-1], count.to_s])
  else
    result.concat([str[-1], "1"])
  end

  compressed = result.join("")
  if compressed.length <= str.length
    return compressed
  else
    return str
  end
end

# O(n)

puts string_compression('aaabcccccdd')
puts string_compression('aaabcccddeeef')
puts string_compression('abc')
