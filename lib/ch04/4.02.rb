# Minimal Tree

# array input is assumed to be sorted and increasing with unique ints

Node = Struct.new(:value, :left, :right)

def array_to_bst(array, l, r)
  return nil if l > r
  mid = (l + r)/2
  node = Node.new(array[mid])
  node.left = array_to_bst(array, l, mid - 1)
  node.right = array_to_bst(array, mid + 1, r)
  node
end

# recursion
def print_bst(node)
  return unless node
  print node.value
  print_bst(node.left)
  print_bst(node.right)
end

# bfs
def stringify(node)
  queue = []
  queue << node
  str = ""
  while !queue.empty?
    current = queue.shift
    str += current.value.to_s
    queue << current.left if current.left
    queue << current.right if current.right
  end
  return str
end
