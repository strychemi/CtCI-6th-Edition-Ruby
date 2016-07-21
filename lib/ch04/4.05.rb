# Validate BST

require "ch04/4.02.rb"

def bst?(node, min, max)
  return true unless node
  return false if (min && node.value <= min) || (max && node.value > max)
  return false unless bst?(node.left, min, node.value) && bst?(node.right, node.value, max)
  return true
end
