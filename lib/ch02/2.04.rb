# Partition

Node = Struct.new(:data, :next)

class LinkedList
  attr_reader :head, :tail

  def initialize(values=[])
    @head = values.empty? ? Node.new(nil, nil) : Node.new(values.first, nil)
    @tail = @head
    values[1..-1].each { |v| append(v) } if values.length > 1
  end

  def append(value)
    if tail.data
      @tail.next = Node.new(value, nil)
    else
      @tail.data = value
    end
    @tail = @tail.next if @tail.next
  end

  def +(linked_list)
    @tail.next = linked_list.head
    @tail = linked_list.tail
    return self
  end

  def print_list
    current = @head
    while current
      # print "#{current.data} "
      current = current.next
    end
  end
end

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
