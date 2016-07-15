# Is Unique

def unique_chars?(str)
  char_set = Hash.new(0)
  str.length.times do |i|
    return false if char_set[str[i]] == 1
    char_set[str[i]] += 1
  end
  return true
end
