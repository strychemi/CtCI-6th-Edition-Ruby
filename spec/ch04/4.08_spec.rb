require "ch04/4.08.rb"

describe "4.8 First Common Ancestor" do
  let (:left) { Node.new(1, nil, nil, 2, nil) }
  let (:right) { Node.new(3, nil, nil, 2, nil) }
  let (:btree) do
    root = Node.new(2, nil, nil, 1, nil)
    left.parent = root
    right.parent = root
    root.left = left
    root.right = right
    root
  end

  describe "with parent link" do
    it "#ancestor1 returns root for direct children" do
      btree
      expect(ancestor1(left, right)).to eq btree
    end
  end

  describe "without parent link" do
    it "#ancestor2 returns root for direct children" do
      expect(ancestor2(btree, left, right)).to eq btree
    end
  end
end
