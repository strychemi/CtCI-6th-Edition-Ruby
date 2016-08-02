require "ch05/5.01.rb"

describe "5.1 Insertion" do
  it "inserting 19 into 1024 should return 1100" do
    expect(insertion(19, 1024, 2, 6)).to eq 1100
  end
end
