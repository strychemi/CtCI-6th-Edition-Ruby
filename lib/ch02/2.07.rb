require_relative "linked_list.rb"

# Intersection

def intersection(one, two)
  return nil if one.tail != two.tail

  node_diff = (one.length - two.length).abs

  if one.length > two.length
    longer, shorter = one, two
  else
    longer, shorter = two, one
  end
  longer_head = longer.head
  shorter_head = shorter.head

  node_diff.times { longer_head = longer_head.next }

  shorter.length.times do
    return longer_head if longer_head == shorter_head
    longer_head = longer_head.next
    shorter_head = shorter_head.next
  end

  return nil
end
