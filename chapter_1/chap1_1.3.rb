def urlify(str)
  result = []
  str.chars.each do |c|
    if c == " "
      result << "%20"
    else
      result << c
    end
  end
  result.join("")
end

# O(n)

puts urlify("Mr John Smith")
