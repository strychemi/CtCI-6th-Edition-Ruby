require "ch02/2.08.rb"

describe "2.8 Loop Detection" do
  let(:one) { LinkedList.new([1,2,3]) }
  let(:circular) do
    list = LinkedList.new([1,2,3,4,5,6,7,8,9,10])
    list.tail.next = list.head
    return list
  end

  it "detects circular loop" do
    expect(loop_detection(circular)).to eq circular.head
  end

  it "returns nil for noncircular loop" do
    expect(loop_detection(one)).to eq nil
  end

end
