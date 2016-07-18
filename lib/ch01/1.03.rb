# URLify

def urlify(str, n)
  spaces = 0
  str.chars.each { spaces += 1 }
  spaces /= 3

  n.times do |i|
    if str[i] == " " && spaces > 0
      str[i] = "%20"
      spaces -= 1
    end
  end

  return str.delete(" ")
end
