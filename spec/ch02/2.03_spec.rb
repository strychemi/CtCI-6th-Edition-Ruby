require "ch02/2.03.rb"

describe "2.3 Delete Middle Node" do

  before(:all) do
    Node = Struct.new(:next, :data)
  end

  let(:linked_list) { Node.new(Node.new(Node.new(nil, "c"), "b"), "a") }

  it "supplying the last node results in an error" do
    last = linked_list.next.next
    expect{ delete_middle_node(last) }.to raise_error(ArgumentError, "supply a middle node please")
  end

  it "a > b > c should result in a > c" do
    mid = linked_list.next
    delete_middle_node(mid)
    expect(linked_list).to eq Node.new(Node.new(nil, "c"), "a")
  end
end
