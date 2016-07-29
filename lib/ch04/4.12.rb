# Paths with Sum

# v = value, l = left, r = right, p = parent, d = depth
Node = Struct.new(:v, :l, :r, :parent, :d)

# utility method to create BST
def array_to_bst(array, l, r, parent=nil, d=1)
  return if l > r
  mid = (l + r)/2
  node = Node.new(array[mid], nil, nil, nil, d)
  node.l = array_to_bst(array, l, mid - 1, node, d + 1)
  node.r = array_to_bst(array, mid + 1, r, node, d + 1)
  node.parent = parent
  node
end

def count_paths_with_sum(root, sum)
  return 0 if root.nil?
  return 1 if root.v == sum && (root.l.nil? && root.r.nil?)
  return count_paths_with_sum(root.l, sum - root.v) + count_paths_with_sum(root.r, sum - root.v)
end
