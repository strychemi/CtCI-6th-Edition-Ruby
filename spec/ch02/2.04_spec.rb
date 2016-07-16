require "ch02/2.04.rb"

describe "2.4 Partition" do

  let(:linked_list) do
    nodes = (1..5).to_a.inject([]) { |m, v| m << Node.new(nil, v) }
    nodes.each_with_index { |node, i| node.next = nodes[i + 1] }
    return nodes[0]
  end

  it "5 > 4 > 3 > 2 > 1 partition 3 should be 2 > 1 > 5 > 4 > 3"
  it "5 > 4 > 3 > 2 > 1 partition 5 should be 4 > 3 > 2 > 1 > 5"
  it "5 > 5 > 4 > 6 partition 5 should be 4 > 5 > 5 > 6"
  it "1 > 2 > 3 partition 1 should be same"

end
