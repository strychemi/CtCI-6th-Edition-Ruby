# Intersection

Node = Struct.new(:data, :next)

class LinkedList
  attr_reader :head, :tail, :length

  def initialize(values=[])
    @head = values.empty? ? Node.new(nil, nil) : Node.new(values.first, nil)
    @tail = @head
    @length = 1
    values[1..-1].each { |v| append(v) } if values.length > 1
  end

  def append(value)
    if tail.data
      @tail.next = Node.new(value, nil)
      @length += 1
    else
      @tail.data = value
    end
    @tail = @tail.next if @tail.next
  end

  def +(linked_list)
    @tail.next = linked_list.head
    @tail = linked_list.tail
    @length += linked_list.length
    return self
  end

  def to_str
    current = @head
    str = ""
    while current
      str += "#{current.data}"
      current = current.next
    end
    return str.strip
  end
end

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
