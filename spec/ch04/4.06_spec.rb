require "ch04/4.06.rb"

describe "4.6 Successor" do
  let(:array) { (1..10).to_a }
  let(:n) { bst(array, 0, array.length - 1) }

  it " returns 6for node 5" do
    expect(successor(n).value).to eq 6
  end

  it "returns 2 for 1" do
    expect(successor(n.left.left).value).to eq 2
  end

  it "returns nil for highest node, 10" do
    expect(successor(n.right.right.right)).to eq nil
  end

  it "returns nil for nil tree" do
    expect(successor(nil)).to eq nil
  end
end
