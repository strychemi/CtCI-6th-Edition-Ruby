require "ch01/1.02.rb"

describe "1.2 Check Permutation" do

  it "returns true for 'abc' and random permutation" do
    orig = 'abc'
    perm = orig.split('').shuffle.join
    expect(permutation?(orig, perm)).to eq(true)
  end

  it "returns false for 'abc' and 'aabc'" do
    expect(permutation?('abc', 'aabc')).to eq(false)
  end

  it "returns false for 'abc' and 'aaa'" do
    expect(permutation?('abc', 'aaa')).to eq(false)
  end
  
end
