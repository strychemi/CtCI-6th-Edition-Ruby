require "ch04/4.07.rb"

describe "4.7 Build Order" do
  let(:projects) { [:a, :b, :c, :d, :e, :f, :g] }
  let(:dependencies) do
    [[:c, :f], [:b, :f], [:a, :f], [:e, :a], [:e, :b], [:g, :d]]
  end

  it "build order is returned for valid input" do
    expected = [:d, :f, :g, :c, :b, :a, :e]
    expect(build_order(projects, dependencies)).to eq expected
  end

  it "raises error for no valid builds" do
    expect { build_order((1..5).to_a,[[1,5], [5,1]]) }.to raise_error(ArgumentError, "No valid builds")
  end
end
