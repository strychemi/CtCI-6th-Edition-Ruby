require_relative "linked_list.rb"

# Partition

def partition(linked_list, val)
  lo = LinkedList.new
  hi = LinkedList.new
  current = linked_list.head

  while current
    if current.data >= val
      hi.append(current.data)
    else
      lo.append(current.data)
    end
    current = current.next
  end

  return lo + hi
end
