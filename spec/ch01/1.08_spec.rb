require 'ch01/1.08.rb'

describe '1.08 Zero Matrix' do

  it 'returns [[0, 0], [1, 0]] for [[1, 0], [1, 1]]' do
    expect(zero_matrix([[1, 0], [1, 1]])).to eq [[0, 0], [1, 0]]
  end

  it 'returns [[1,0,3], [0,0,0], [7,0,9]] for [[1,2,3], [4,0,6], [7,8,9]]' do
    actual = zero_matrix([[1,2,3], [4,0,6], [7,8,9]])
    expected = [[1,0,3], [0,0,0], [7,0,9]]
    expect(actual).to eq expected
  end

end
