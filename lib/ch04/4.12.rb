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

def count_paths_with_sum(node, target_sum, running_sum=0, path_count=Hash.new(0))
  # base case
  return 0 if node.nil?

  # count paths with "current"/running sum ending at current node
  running_sum += node.v
  sum = running_sum - target_sum
  total_paths = path_count[sum]

  # if running_sum == target_sum,
  # then that means an additional path starts from root
  # account for this path
  total_paths += 1 if running_sum == target_sum

  # increment path_count, recurse, then decrement path_count
  path_count[running_sum] += 1
  total_paths += count_paths_with_sum(node.l, target_sum, running_sum, path_count)
  total_paths += count_paths_with_sum(node.r, target_sum, running_sum, path_count)
  path_count[running_sum] -= 1

  return total_paths
end
