def is_unique?(str)
  counts = Hash.new

  str.chars.each do |c|
    if counts[c]
      return false
    else
      counts[c] = 1
    end
  end

  true
end

puts is_unique?('abcd')
puts is_unique?('accd')
