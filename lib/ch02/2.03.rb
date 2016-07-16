# Delete Middle Node

Node = Struct.new(:next, :data)
# linked_list is assumed to be a list of Nodes
# connected via the .next reference
# please refer to spec/ch02/2.03_spec.rb file to see how
# the linked list is setup

def delete_middle_node(node)
  if node.next
    node.data = node.next.data
    node.next = node.next.next
  else
    raise ArgumentError, "supply a middle node please"
  end
end
