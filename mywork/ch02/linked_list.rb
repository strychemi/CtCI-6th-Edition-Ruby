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
