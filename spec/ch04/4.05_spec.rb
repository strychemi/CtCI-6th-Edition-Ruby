require "ch04/4.05.rb"

describe "4.5 Validate BST" do
  let(:array) { (1..10).to_a }
  let(:bst) { array_to_bst(array, 0, array.length - 1) }

  it "returns true for bst" do
    expect(bst?(bst, nil, nil)).to eq true
  end

  it "returns false for non bst" do
    node = Node.new(10, Node.new(20, nil, nil), nil)
    expect(bst?(node, nil, nil)).to eq false
  end

  it "returns true for a null bst" do
    expect(bst?(nil, nil, nil)).to eq true
  end
end
