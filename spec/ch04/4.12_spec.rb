require "ch04/4.12.rb"

describe "4.12 Paths with Sum" do
  let(:a) { (1..3).to_a }
  let(:bst_1) { array_to_bst(a, 0, a.length - 1) }

  it "return 1 path for sum 5 for [1,2,3] BST" do
    expect(count_paths_with_sum(bst_1, 5)).to eq 1
  end

end
