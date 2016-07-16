# Remove Dups

Node = Struct.new(:next, :data)
# linked_list is assumed to be a list of Nodes
# connected via the .next reference
# please refer to spec/ch02/2.01_spec.rb file to see how
# the linked list is setup

def remove_dups(linked_list)
  data_set = {}
  current = linked_list
  previous = nil

  while current
    if data_set[current.data]
      previous.next = current.next
    else
      data_set[current.data] = true
      previous = current
    end
    current = current.next
  end

  return linked_list
end
