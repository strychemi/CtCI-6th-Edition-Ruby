require_relative "linked_list.rb"
# Return kth to the Last

def kth_last(linked_list, k)
  # r1 is spaced k-1 nodes ahead of r2
  r1 = linked_list.head
  (k-1).times { r1 = r1.next }
  r2 = linked_list.head

  # when r1 hits the end of the list, the kth should be at r2
  while r1.next
    r1 = r1.next
    r2 = r2.next
  end

  return r2.data
end

list = LinkedList.new(["once", "upon", "a", "time", "there", "was", "a", "boy", "named", "Nathan"])

p list.to_str
p kth_last(list, 2)  # => named
