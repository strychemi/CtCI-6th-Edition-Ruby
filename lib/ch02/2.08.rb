require_relative "linked_list.rb"

# Loop Detection

def loop_detection(linked_list)
  node_hash = Hash.new(0)
  current = linked_list.head

  while current
    if node_hash[current] == 0
      node_hash[current] += 1
    else
      return current
    end
    current = current.next
  end

  return nil
end
