# Palindrome

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

def palindrome?(linked_list)
  str = linked_list.to_str
  return str == str.reverse ? true : false
end
