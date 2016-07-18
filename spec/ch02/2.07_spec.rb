require "ch02/2.07.rb"

describe "2.7 Intersection" do
  let(:one) { LinkedList.new([1,2,3]) }
  let(:two) { LinkedList.new([4,5,6]) }
  let(:thr) { LinkedList.new([9,9,9]) }

  it "intersecting linked_lists returns the point of intersection" do
    first = one + thr
    second = two + thr
    expect(intersection(first, second)).to eq thr.head
  end

  it "two separate lists returns nil" do
    first = one + one
    second = two + thr
    expect(intersection(first, second)).to eq nil
  end

end
