# String Rotation

def is_substring?(s1, s2)
  return s1.include?(s2) ? true : false
end

def string_rotation?(s1, s2)
  if s1.length != s2.length
    return false
  else
    return is_substring?(s1 + s1, s2)
  end
end
