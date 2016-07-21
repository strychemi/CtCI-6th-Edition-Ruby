require "ch04/4.04.rb"

describe "4.4 Check Balanced" do
  let(:array) { (1..10).to_a }
  let(:bst) { array_to_bst(array, 0, array.length - 1) }

  it "returns not false for a balanced bst" do
    expect(check_height(bst)).to_not eq false
  end

  it "returns false for a non balanced bst" do
    root = Node.new(5, Node.new(4, Node.new(3, nil, nil), nil), nil)
    expect(check_height(root)).to eq false
  end
end
