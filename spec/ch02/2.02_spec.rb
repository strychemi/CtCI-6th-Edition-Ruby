require "ch02/2.02.rb"

describe "2.2 Return kth to the Last" do

  let(:linked_list) { Node.new("a", Node.new("b", Node.new("c", nil))) }

  it "k = 1, should return c from a > b > c" do
    expect(kth_last(linked_list, 1)).to eq Node.new("c", nil)
  end

  it "k = 2, should return b > c from a > b > c" do
    expect(kth_last(linked_list, 2)).to eq Node.new("b", Node.new("c", nil))
  end

end
