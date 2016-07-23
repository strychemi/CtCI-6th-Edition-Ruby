# BST Sequences

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

# implemented via BFS with queue
# used node depth to organize nodes by depth
# then generate the arrays based on permutation of those sets
def bst_sequences(node)
  depth = Hash.new { |h, k| h[k] = [] }
  q = []
  q << node

  # use BFS to group nodes by depth
  while !q.empty?
    current = q.shift
    depth[current.d] << current.v
    q << current.l if current.l
    q << current.r if current.r
  end
  depth = depth.map { |pair| pair[1] }
  p depth
  # return all the permutations of nodes
  return depth.first.product(*depth[1..-1])
end
