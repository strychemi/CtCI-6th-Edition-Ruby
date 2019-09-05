def unique(str)
  if str == ""
    return false
  end

  i = 0
  letters = {}
  while i < str.length - 1
    if letters[str[i]]
      return false
    else
      letters[str[i]] = true
    end
    i+=1
  end
  return true
end

puts unique('hello')
puts unique('hola')
puts unique(" ")
