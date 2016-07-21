# Successor

# same algorithm as 4.02 except with parents now
Node = Struct.new(:value, :left, :right, :parent)

def bst(array, l, r, parent=nil)
  return nil if l > r
  mid = (l + r)/2
  node = Node.new(array[mid])
  node.parent = parent
  node.left = bst(array, l, mid - 1, node)
  node.right = bst(array, mid + 1, r, node)
  node
end

# basically a method that returns the next highest number in a BST
def successor(node)
  return if node.nil?
  # if right subtree exists, return leftmost node under it
  # i.e. this is the next higher number than the one at current node
  r = node.right
  if r
    return nil if r.nil?
    while r.left
      r = r.left
    end
    return r
  else
    # if there is no right subtree, we have to go up to parent because
    # there is no number greater than the current node
    # so we have to keep going up parents until we figure out that the
    # child was the left child of the parent because that must mean
    # the parent has to be greater in value than the current node
    current = node
    parent = current.parent
    while parent && parent.left != current
      current = parent
      parent = parent.parent
    end
    return parent
  end
end
