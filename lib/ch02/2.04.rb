# Partition

Node = Struct.new(:next, :data)
# linked_list is assumed to be a list of Nodes
# connected via the .next reference
# please refer to spec/ch02/2.04_spec.rb file to see how
# the linked list is setup

def partition(node, val)
  lo = Node.new(nil, nil)
  hi = Node.new(nil, nil)
  lo_head = lo
  hi_head = hi

  while node
    if node >= val
      hi = add_node(hi, val)
    elsif node < val
      lo = add_node(lo, val)
    end
  end

  lo.next = hi_head
  return lo_head
end

def add_node(current_node, val)
  if current_node.data
    current_node.next = Node.new(nil, node.data)
  else
    current_node.data = val
  end
  return current_node
end
