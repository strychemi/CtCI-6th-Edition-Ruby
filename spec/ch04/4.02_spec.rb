require "ch04/4.02.rb"

describe "4.2 Minimal Tree" do
  let(:array) { (1..10).to_a }

  describe "#array_to_bst" do
    it "[1,2,3] should be bst" do
      a = [1,2,3]
      root = array_to_bst(a, 0, a.length - 1)
      expect(stringify(root)).to eq "213"
    end

    it "array is bst" do
      root = array_to_bst(array, 0, array.length - 1)
      expect(stringify(root)).to eq "52813694710"
    end
  end
end
