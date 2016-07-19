# Stack Min
Node = Struct.new(:value, :next, :prev, :min)

# Stack implemented with a linked list
class Stack
  attr_reader :size, :min

  def initialize
    @size = 0
    @head = nil
    @tail = nil
  end

  def push(value)
    if @tail
      @tail.next = Node.new(value, nil, @tail, [@tail.min, value].min)
      @tail = @tail.next
      @size += 1
    else
      @head = Node.new(value, nil, nil, value)
      @tail = @head
      @size += 1
    end
  end

  def pop
    if @size == 1
      pop_val = @tail.value
      @head = nil
      @tail = nil
      return pop_val
    elsif @size > 1
      pop_val = @tail.value
      @tail = @tail.prev
      @tail.next = nil
      return pop_val
    end
    return nil
  end

  def min
    return @tail ? @tail.min : nil
  end

end
