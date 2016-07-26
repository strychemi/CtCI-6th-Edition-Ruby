# Random Node

# v = value, l = left, r = right, p = parent, d = depth
Node = Struct.new(:v, :l, :r, :parent, :d)

class BinarySearchTree
  attr_accessor :root, :size

  def initialize
    @root = nil
    @size = 0
    @nodes = {}
  end

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

  def insert(value, node=@root, parent=nil)
    if @root.nil?
      # create root if it doesn't exist yet
      @root = Node.new(value, nil, nil, nil, 1)
      @size += 1
    elsif node.nil?
      # if value is less or equal to parent, then create node left, else right
      if value <= parent.v
        parent.l = Node.new(value, nil, nil, parent, parent.d + 1)
        @nodes[parent.l] = true
      else
        parent.r = Node.new(value, nil, nil, parent, parent.d + 1)
        @nodes[parent.r] = true
      end
      @size += 1
      return
    else
      # if value is less or equal to node recurse left, else recurse right
      value <= node.v ? insert(value, node.l, node) : insert(value, node.r, node)
    end
  end

  def find(value, node=@root)
    if node.nil?
      return nil
    elsif value == node.v
      return node
    else
      value <= node.v ? find(value, node.l) : find(value, node.r)
    end
  end

  def delete(value, node=@root)
    if node.nil?
      return nil
    elsif value == node.v
      # if value is less or equal to parent, then delete left, else right
      if value <= node.parent.v
        node.parent.l = nil
        @nodes.delete(node.parent.l)
      else
        node.parent.r = nil
        @nodes.delete(node.parent.l)
      end
      @size -= 1
    else
      # if value is less or equal to node recurse left, else recurse right
      value <= node.v ? delete(value, node.l) : delete(value, node.r)
    end
  end

  def random_node
    return @nodes.keys.sample
  end

end
