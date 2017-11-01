# Check Permutation

def permutation?(a, b)
  a_chars, b_chars = Hash.new(0), Hash.new(0)

  return false if a.length != b.length

  a.length.times do |i|
    a_chars[a[i]] += 1
    b_chars[b[i]] += 1
  end

  return a_chars == b_chars;
end
