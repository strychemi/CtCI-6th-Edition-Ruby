require "ch05/5.01.rb"

describe "5.1 Insertion" do
  it "inserting 10011 into 10000000000 should return 10001001100" do
    expect(insertion("10011", "10000000000", 2, 6)).to eq "10001001100"
  end
end
