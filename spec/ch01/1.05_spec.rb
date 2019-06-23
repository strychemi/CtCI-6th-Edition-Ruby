require "ch01/1.05.rb"

describe "1.5 One Away" do
  it "returns true for 'pale', 'pale'" do
    expect(one_away('pale', 'pale')).to eq(true)
  end

  it "returns false for 'aaa', 'a'" do
    expect(one_away('aaa', 'a')).to eq(false)
  end

  it "returns true for 'pale', 'ple'" do
    expect(one_away('pale', 'ple')).to eq(true)
  end

  it "returns true for 'ple', 'pale'" do
    expect(one_away('ple', 'pale')).to eq(true)
  end

  it "returns true for 'pales', 'pale'" do
    expect(one_away('pales', 'pale')).to eq(true)
  end

  it "returns true for 'pale', 'bale'" do
    expect(one_away('pale', 'bale')).to eq(true)
  end

  it "returns false for 'pale', 'bake'" do
    expect(one_away('pale', 'bake')).to eq(false)
  end

  it "returns false for 'pale', 'elp'" do
    expect(one_away('pale', 'elp')).to eq(false)
  end

end
