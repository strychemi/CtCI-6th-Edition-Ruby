require "ch04/4.01.rb"

describe "4.1 Route Between Nodes" do
  let(:adj) do
    temp = {}
    nodes = 3
    (1..nodes).each do |k|
      temp[k] = [(k + 1) % (nodes + 1) == 0 ? 1 : (k + 1) % (nodes + 1)]
    end
    temp
  end

  it "returns true for initial and final node are the same" do
    expect(find_route(adj, 1, 1)).to eq true
  end

  it "returns false for nodes that don't exist in graph" do
    expect(find_route(adj, 10, 15)).to eq false
  end

  it "returns true for valid graph and initial/final node" do
    expect(find_route(adj, 1, 3)).to eq true
  end

  it "returns false for a route that doesn't exist" do
    adj[4] = [3]
    expect(find_route(adj, 1, 4))
  end

end
