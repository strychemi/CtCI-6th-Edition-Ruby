# Zero Matrix

def zero_matrix(matrix)
  m = matrix.length
  n = matrix[0].length
  null_rows = {}
  null_cols = {}

  # find all rows and columns containing 0
  m.times do |r|
    n.times do |c|
      if matrix[r][c] == 0
        null_rows[r] = true
        null_cols[c] = true
      end
    end
  end

  # set rows to 0
  null_rows.each { |_k, v| n.times { |c| matrix[k][c] = 0 }}

  # set cols to 0
  null_cols.each { |_k, v| m.times { |r| matrix[r][k] = 0 }}

  return matrix
end
