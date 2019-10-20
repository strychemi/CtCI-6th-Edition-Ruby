def check_permu(str1, str2)
  big = str1
  small = str2

  if str2.length > str1.length
    big = str2
    small = str1
  end

  if str1.length == 0 || str2.length == 0
    return false
  end

  char_map = Hash.new(0)

  big.length.times do |i|
    char_map[big[i]] += 1
  end

  small_map = Hash.new(0)

  small.length.times do |j|
    curr = small[j]
    small_map[curr] += 1
    return false if !char_map[curr] || char_map[curr] < small_map[curr]
  end

  return true

end

puts check_permu("amanda", "nad")
puts check_permu("book", "dog")
puts check_permu("", "dog")
