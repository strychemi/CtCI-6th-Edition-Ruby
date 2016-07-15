require "ch01/1.03.rb"

describe "1.3 URLify" do

  it "returns 'hello%20world' for inputs ('hello world  ', 12)" do
    expect(urlify('hello world  ', 12)).to eq('hello%20world')
  end

  it "returns 'a%20b' for inputs ('a   b', 5)" do
    expect(urlify('a   b', 5)).to eq('a%20b')
  end

  it "returns 'a%20%20b%20c' for inputs ('a  b     c', 10)" do
    expect(urlify('a  b     c', 10)).to eq('a%20%20b%20c')
  end

  it "returns '%20a' for inputs (' a  ', 4)" do
    expect(urlify(' a  ', 4)).to eq('%20a')
  end

end
