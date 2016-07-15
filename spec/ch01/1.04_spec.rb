require "ch01/1.04.rb"

describe "1.4 Palindrome Permutation" do

  it "returns true for Tact Coa" do
    expect(palindrome_permutation?('Tact Coa')).to eq(true)
  end

  it "returns true for ' a ba '" do
    expect(palindrome_permutation?(' a ba ')).to eq(true)
  end

  it "returns false for 'abc'" do
    expect(palindrome_permutation?('abc')).to eq(false)
  end


end
