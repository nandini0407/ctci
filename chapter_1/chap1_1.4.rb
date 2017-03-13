def palindrome_permutation(str)
  counts = Hash.new
  l = str.length
  str.chars.each do |c|
    if counts[c]
      counts[c] += 1
    else
      counts[c] = 1
    end
  end

  odd_count = 0

  counts.each do |_, count|
    if l.even?
      return false if count.odd?
    elsif l.odd?
      if count.odd?
        odd_count += 1
        return false if odd_count > 1
      end
    end
  end

  true
end

# O(n)

puts palindrome_permutation('abba')
puts palindrome_permutation('tacocat')
puts palindrome_permutation('word')
puts palindrome_permutation('words')
