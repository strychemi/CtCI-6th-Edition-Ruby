require "ch04/4.09.rb"

describe "4.9 BST Sequences" do
  let(:a) { (1..3).to_a }
  let(:bst) { array_to_bst(a, 0, a.length - 1) }

  it "returns all permutations of arrays for proper bst" do
    expect(bst_sequences(bst)).to eq [[2,1,3], [2,3,1]]
  end
end
