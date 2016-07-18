require_relative "linked_list.rb"

# Palindrome

def palindrome?(linked_list)
  str = linked_list.to_str
  return str == str.reverse ? true : false
end
