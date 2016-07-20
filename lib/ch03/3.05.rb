# Sort Stack

# Again, I'm assuming Ruby's arrays to behave like stacks.
# (check 3.02.rb for stack implemented from scratch)

def sort_stack(s1)
  s2 = []
  while !s1.empty?
    top = s1.pop
    if s2.empty?
      s2 << top
    elsif s2[-1] <= top
      s2 << top
    else
      while s2[-1] && s2[-1] > top
        s1 << s2.pop
      end
      s2 << top
    end
  end

  while !s2.empty?
    s1 << s2.pop
  end
  return s1
end
