require_relative "linked_list.rb"
# Delete Middle Node

def delete_middle_node(node)
  if node.next
    node.data = node.next.data
    node.next = node.next.next
  else
    raise ArgumentError, "supply a middle node please"
  end
end
