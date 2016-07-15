# Palindrome Permutation

def palindrome_permutation?(str)
  chars = Hash.new(0)
  str_length = 0

  str.length.times do |i|
    if str[i].match(/\w/)
      chars[str[i].downcase] += 1
      str_length += 1
    end
  end

  odd_occuring_letters = chars.select { |k, v| v.odd? }.length

  if str_length.odd?
    return odd_occuring_letters == 1 ? true : false
  else
    return odd_occuring_letters == 0 ? true : false
  end
end
