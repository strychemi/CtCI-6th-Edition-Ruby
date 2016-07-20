require "ch03/3.05.rb"

describe "3.5 Sort Stack" do
  let(:s1) { [3,2,1] }
  let(:s2) { [1,2,3] }

  it "returns [] for an empty array" do
    expect(sort_stack([])).to eq([])
  end

  it "returns sorted array for unordered array" do
    expect(sort_stack(s2)).to eq [3,2,1]
  end

  it "doesn't do anything for an already sorted stack" do
    expect(sort_stack(s1)).to eq [3,2,1]
  end
end
