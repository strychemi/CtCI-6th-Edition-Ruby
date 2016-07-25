require "ch04/4.10.rb"

describe "4.10 Check Subtree" do
  let(:a) { (1..3).to_a }
  let(:bst) { array_to_bst(a, 0, a.length - 1) }

  it "returns true for valid subtree of binary tree" do
    expect(subtree?(bst, bst.r)).to eq true
  end

  it "returns true for empty subtree for any binary tree" do
    expect(subtree?(bst, nil)).to eq true
  end

  it "returns false for a subtree not part of a binary tree" do
    expect(subtree?(bst, Node.new(99, nil, nil, nil, 1))).to eq false
  end
end
