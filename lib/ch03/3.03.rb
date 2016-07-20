# Stack of Plates

# getting lazy now, linked list for optimal for each stack because:
# insertion, deletion is O(1) assuming the tail is kept track of
# Utilizing Ruby's arrays because it lends itself to much cleaner code
# rollover is implemented assuming some it's ok for some stacks to be not full
class SetOfStacks
  def initialize(threshold=10)
    @threshold = threshold
    # the array of stacks
    @s = []
  end

  def push(value)
    if @s.empty?
      # add a stack if there are none
      @s << [value]
    else
      # then add plate/value depending on threshold
      @s[-1].length < @threshold ? @s[-1] << value : @s << [value]
    end
  end

  def pop
    if @s.empty?
      return nil
    else
      last_stack = @s.length - 1
      pop_value = @s[last_stack].pop
      @s.delete_at(last_stack) if @s[last_stack].empty?
      return pop_value
    end
  end

  def pop_at(stack_index)
    if stack_index >= @s.length + 1
      return nil
    else
      stack = stack_index - 1
      pop_value = @s[stack].pop
      @s.delete_at(stack) if @s[stack].empty?
      return pop_value
    end
  end
end
