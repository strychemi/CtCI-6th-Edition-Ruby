require "ch02/2.02.rb"

describe "2.2 Return kth to the Last" do

  let(:linked_list) { Node.new(Node.new(Node.new(nil, "c"), "b"), "a") }

  it "k = 1, should return c from a > b > c" do
    expect(kth_last(linked_list, 1)).to eq Node.new(nil, "c")
  end

  it "k = 2, should return b > c from a > b > c" do
    expect(kth_last(linked_list, 2)).to eq Node.new(Node.new(nil, "c"), "b")
  end

end
