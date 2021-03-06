require "ch02/2.06.rb"

describe "2.6 Palindrome" do
  let(:one) { LinkedList.new([1,2,3]) }

  it "1>2>3 is NOT a palindrome" do
    expect(palindrome?(one)).to eq false
  end

  it "1>2>1 is a palindrome" do
    one = LinkedList.new([1,2,1])
    expect(palindrome?(one)).to eq true
  end
end
