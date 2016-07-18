require_relative "linked_list.rb"

# Loop Detection

def loop_detection(linked_list)
  node_hash = {}
  current = linked_list.head

  while current
    if node_hash[current]
      return current
    else
      node_hash[current] = true
    end
    current = current.next
  end

  return nil
end
