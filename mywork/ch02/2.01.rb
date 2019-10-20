require 'byebug'

require_relative "linked_list.rb"
# Remove Dups

def remove_dups(linked_list)
  prev = nil
  n = linked_list.head
  num_hash = Hash.new()

  while n
    if num_hash[n.data]
      prev.next = n.next
    else
      num_hash[n.data] = true
      prev = n
    end
    n = n.next
  end
  return linked_list.to_str
end


list = LinkedList.new([1,5,4,5])
p remove_dups(list)
