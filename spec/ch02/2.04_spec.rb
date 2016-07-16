require "ch02/2.04.rb"

describe "2.4 Partition" do

  let(:node) { Node.new(5, nil) }
  let(:linked_list) { LinkedList.new([5,4,3,2,1]) }

  it "5 > 4 > 3 > 2 > 1 partition 3 should be 2 > 1 > 5 > 4 > 3" do
    actual = partition(linked_list, 3)
    expected = LinkedList.new([2,1,5,4,3])
    expect(actual.print_list).to eq expected.print_list
  end

  it "5 > 4 > 3 > 2 > 1 partition 5 should be 4 > 3 > 2 > 1 > 5" do
    actual = partition(linked_list, 5)
    expected = LinkedList.new([4,3,2,1,5])
    expect(actual.print_list).to eq expected.print_list
  end

  it "5 > 5 > 4 > 6 partition 5 should be 4 > 5 > 5 > 6" do
    actual = partition(LinkedList.new([5,5,4,6]), 5)
    expected = LinkedList.new([4,5,5,6])
    expect(actual.print_list).to eq expected.print_list
  end

  it "1 > 2 > 3 partition 1 should be same" do
    actual = partition(LinkedList.new([1,2,3]), 1)
    expected = LinkedList.new([1,2,3])
    expect(actual.print_list).to eq expected.print_list
  end

end
