require "ch01/1.06.rb"

describe "1.5 Palindrome Permutation" do

  it "returns 'a2b1c5a3' for 'aabcccccaaa' as input" do
    expect(compress_str('aabcccccaaa')).to eq('a2b1c5a3')
  end

  it "returns 'abcde' for 'abcde' as input" do
    expect(compress_str('abcde')).to eq('abcde')
  end
  
end
