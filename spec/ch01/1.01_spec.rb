require "ch01/1.01.rb"

describe "1.1 Is Unique" do

  it "returns true for input string 'abc'" do
    expect(unique_chars?('abc')).to eq(true)
  end

  it "returns false for input string 'abca'" do
    expect(unique_chars?('abca')).to eq(false)
  end

  it "returns false for input string 'aaa'" do
    expect(unique_chars?('aaa')).to eq(false)
  end

  it "returns true for abc...zABC...Z" do
    lower = 'abcdefghijklmnopqrstuvwxyz'
    expect(unique_chars?(lower + lower.upcase)).to eq(true)
  end

  it "returns true for abc...zABC...ZZ" do
    lower = 'abcdefghijklmnopqrstuvwxyz'
    expect(unique_chars?(lower + lower.upcase + "Z")).to eq(false)
  end

  it "returns true for 123" do
    expect(unique_chars?('123')).to eq(true)
  end

  it "returns false for 111" do
    expect(unique_chars?('111')).to eq(false)
  end

end
