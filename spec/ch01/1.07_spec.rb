require "ch01/1.07.rb"

describe "1.7 Rotate Matrix" do

  it "rotates [[1,2], [3,4]] to [[3,1], [4,2]] 90 deg clockwise" do
    expect(rotate_matrix([[1,2], [3,4]])).to eq([[3,1], [4,2]])
  end

  it "rotates [[1,2,3], [4,5,6], [7,8,9]] to [[3,1], [4,2]] 90 deg clockwise" do
    actual = rotate_matrix([[1,2,3], [4,5,6], [7,8,9]])
    expected = [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
    expect(actual).to eq(expected)
  end

end
