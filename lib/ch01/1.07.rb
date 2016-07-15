# Rotate Matrix
=begin
Basically, for an N x N matrix
Start top left of each "layer" (from the outermost layer)
and do a 4-swap for the first M - 1 elements,
where M is the length of top row of the layer
For example:

[
  [1,2,3]
  [4,5,6]
  [7,8,9]
]

Move 1 to 3, 3 to 9, 9 to 7, 7 to 1
Then do the same 4-way swap for element 2 within the same layer.
The layer should be fully rotated.
=end


def rotate_matrix(matrix)
  n = matrix.length

  (n/2).times do |layer|
    final = n - layer - 1
    (layer..final-1).each do |i|
      offset = i - layer
      # save top
      top = matrix[layer][i]
      # left to top
      matrix[layer][i] = matrix[final - offset][layer]
      # bottom to left
      matrix[final - offset][layer] = matrix[final][final - offset]
      # right to bottom
      matrix[final][final - offset] = matrix[i][final]
      # top to right
      matrix[i][final] = top
    end
  end

  return matrix
end
