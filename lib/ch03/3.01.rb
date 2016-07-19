class ManyStacks
  attr_reader :stack_size, :top_index

  def initialize(stacks=1)
    @stacks = stacks
    # keeps track of each stack size
    @stack_size = (0...stacks).to_a.inject({}) { |h, k| h[k] = 0; h }
    # keeps track of top element for any stack within the single array
    @top_index = (0...stacks).to_a.inject({}) { |h, k| h[k] = -1; h }
    # the single array
    @array = []
  end

  def push(stack, object)
    is_empty?(stack) ? @top_index[stack] = stack : @top_index[stack] += @stacks
    @stack_size[stack] += 1
    @array[@top_index[stack]] = object
  end

  def pop(stack)
    popped = @array[@top_index[stack]]
    @array[@top_index[stack]] = nil
    @stack_size[stack] -= 1
    @top_index[stack] -= @stacks
    return popped
  end

  def peek(stack)
    return @array[@top_index[stack]]
  end

  def is_empty?(stack)
    return @stack_size[stack] == 0 ? true : false
  end

end
