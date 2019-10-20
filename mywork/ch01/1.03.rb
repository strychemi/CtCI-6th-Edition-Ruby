def URLify(str, ln)
  arr = []

  ln.times do |i|
    if str[i] == " "
      arr.push("%20")
    else
      arr.push(str[i])
    end
  end

  return arr.join

end

puts URLify("I am Human      ", 10)
puts URLify("Mr John Smith      ", 13)
puts URLify("   ", 0)
