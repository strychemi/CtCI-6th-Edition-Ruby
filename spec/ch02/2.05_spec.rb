require "ch02/2.05.rb"

describe "2.5 Sum Lists" do
  let(:one) { LinkedList.new([1,2,3]) }

  it "1>2>3 and 4>5>6 should sum to 5>7>9" do
    two = LinkedList.new([4,5,6])
    expected = LinkedList.new([5,7,9])
    expect(sum_lists(one, two).to_str).to eq expected.to_str
  end

  it "1>2>3 and 9>9 should sum to 222" do
    two = LinkedList.new([9,9])
    expected = LinkedList.new([2,2,2])
    expect(sum_lists(one, two).to_str).to eq expected.to_str
  end
end
