# First Common Ancestor

# with Parent references

Node = Struct.new(:value, :left, :right, :depth, :parent)

def ancestor1(n1, n2)
  # get both nodes to the same depth/level by movin up the deeper one
  delta = n1.depth - n2.depth
  first = delta > 0 ? n2 : n1
  second = delta > 0 ? n1 : n2
  delta.abs.times { second = second.parent }

  # keep checking parents for both nodes
  # while going up
  while first != second && first && second
    first = first.parent
    second = second.parent
  end

  # return the ancestor or nil if none
  return (first.nil? || second.nil?) ? nil : first
end


# without Parent references

def ancestor2(root, n1, n2)
  return root if root.nil? || root == n1 || root == n2

  n1_left = covers(root.left, n1)
  n2_left = covers(root.left, n2)
  # return root if both nodes direct children of root
  return root if n1_left != n2_left
  # else if both nodes are on the same side of root
  # swap to that side and recurse
  child_side = n1_left ? root.left : root.right
  return ancestor2(child_side, n1, n2)
end

# returns true of false if root or n covers each other
# i.e. if either is a descendent of the other
def covers(root, n)
  return false if root.nil?
  return true if root == n
  return covers(root.left, n) || covers(root.right, n)
end
