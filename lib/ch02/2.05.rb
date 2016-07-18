require_relative "linked_list.rb"

# Sum Lists

# assumed digits in linked lists are in forward order
def sum_lists(one, two)
  sum = one.to_str.to_i + two.to_str.to_i
  return LinkedList.new(sum.to_s.split(""))
end
