# Queue via Stacks

# rather than write up a custom Stack class (as done in previous problems)
# I'm just using Ruby's arrays to make the code as simple as possible

# if you want to see how stacks are implemented "by the letter"/from scratch
# via linked-lists check out 3.02.rb

class MyQueue

  def initialize
    @q = []
  end

  def add(value)
    @q << value
  end

  def remove
    return is_empty? ? nil : @q.shift
  end

  def peek
    return is_empty? ? nil : @q.first
  end

  def is_empty?
    return @q.empty? ? true : false
  end
end
