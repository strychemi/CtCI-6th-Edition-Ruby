# Return kth to the Last

# Node = Struct.new(:next, :data)
# linked_list is assumed to be a list of Nodes
# connected via the .next reference
# please refer to spec/ch02/2.02_spec.rb file to see how
# the linked list is setup

# k = 1 is last,
# k = 2 is second to last, etc.

def kth_last(linked_list, k)
  # r1 is spaced k-1 nodes ahead of r2
  r1 = linked_list
  (k-1).times { r1 = r1.next }
  r2 = linked_list

  # when r1 hits the end of the list, the kth should be at r2
  while r1.next
    r1 = r1.next
    r2 = r2.next
  end

  return r2
end
