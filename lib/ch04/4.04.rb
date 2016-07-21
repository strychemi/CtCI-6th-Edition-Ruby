# Check Balanced

require "ch04/4.02.rb"

def check_height(node)
  return -1 unless node
  left_height = check_height(node.left)
  return false if left_height == false
  right_height = check_height(node.right)
  return false if right_height == false

  height_diff = left_height - right_height
  if height_diff.abs > 1
    return false
  else
    return [left_height, right_height].max + 1
  end
end
