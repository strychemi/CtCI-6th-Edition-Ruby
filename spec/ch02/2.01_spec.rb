require "ch02/2.01.rb"

describe "2.1 Remove Dups" do

  it "a > a > b > c becomes a > b > c" do
    input = Node.new(Node.new(Node.new(Node.new(nil, "c"), "b"), "a"), "a")
    output = Node.new(Node.new(Node.new(nil, "c"), "b"), "a")
    expect(remove_dups(input)).to eq output
  end

  it "a > b > c stays the same" do
    input = Node.new(Node.new(Node.new(nil, "c"), "b"), "a")
    output =  Node.new(Node.new(Node.new(nil, "c"), "b"), "a")
    expect(remove_dups(input)).to eq output
  end

  it "a > a > a becomes a" do
    input = Node.new(Node.new(Node.new(nil, "a"), "a"), "a")
    expect(remove_dups(input)).to eq Node.new(nil, "a")
  end

end
