require "ch04/4.11.rb"

describe "4.11 Random Node" do
  describe BinarySearchTree do
    let(:a) { (1..3).to_a }
    let(:bst) { BinarySearchTree.new }
    let(:bst_filled) do
      obj = BinarySearchTree.new
      obj.insert(2)
      obj.insert(1)
      obj.insert(3)
      obj
    end

    describe "#insert" do
      it "increases size by 1" do
        expect { bst.insert(1) }.to change(bst, :size).by(1)
      end

      it "adds node with value to root for empty tree" do
        bst.insert(1)
        expect(bst.root.v).to eq 1
      end

      it "correctly constructs BST for [1,2,3]" do
        bst.insert(2)
        bst.insert(1)
        bst.insert(3)
        expect(bst.root).to eq bst.array_to_bst(a, 0, a.length - 1)
        expect(bst.size).to eq 3
      end
    end

    describe "#find" do
      it "it finds the first node of the specified value" do
        expect(bst_filled.find(1)).to eq bst_filled.root.l
      end
    end

    describe "#delete" do
      it "it deletes the first node of the specified value" do
        bst_filled.delete(1)
        expect(bst_filled.root.l).to eq nil
        expect(bst_filled.size).to eq 2
      end
    end

    describe "#random_node" do
      it "find a random node" do
        rn = bst_filled.random_node
        expect(rn).to eq bst_filled.find(rn.v)
      end
    end
  end
end
