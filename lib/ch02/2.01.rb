require_relative "linked_list.rb"
# Remove Dups

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
