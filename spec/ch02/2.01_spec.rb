require "ch02/2.01.rb"

describe "2.1 Remove Dups" do

  it "a > a > b > c becomes a > b > c" do
    input = Node.new("a", Node.new("a", Node.new("b", Node.new("c", nil))))
    output = Node.new("a", Node.new("b", Node.new("c", nil)))
    expect(remove_dups(input)).to eq output
  end

  it "a > b > c stays the same" do
    input = Node.new("a", Node.new("b", Node.new("c", nil)))
    output =  Node.new("a", Node.new("b", Node.new("c", nil)))
    expect(remove_dups(input)).to eq output
  end

  it "a > a > a becomes a" do
    input = Node.new("a", Node.new("a", Node.new("a", nil)))
    expect(remove_dups(input)).to eq Node.new("a", nil)
  end

end
