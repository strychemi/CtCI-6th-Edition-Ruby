require "ch04/4.03.rb"

describe "4.3 List of Depths" do
  let(:array) { (1..3).to_a }
  let(:bst) { array_to_bst(array, 0, array.length - 1) }

  it "outputs an array of 'linked lists'" do
    result = list_of_depths(bst).map { |depth| depth.length }
    expect(result).to eq [1,2]
  end

  it "outputs an array of 'linked lists' for a bigger bst" do
    a = (1..10).to_a
    bst2 = array_to_bst(a, 0, a.length - 1)
    result = list_of_depths(bst2).map { |d| d.length }
    expect(result).to eq [1, 2, 4, 3]
  end
end
