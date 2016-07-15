# String Compression

def compress_str(str)
  original_length = str.length
  compressed = ""
  compressed_length = 0

  count = 1
  original_length.times do |i|
    if str[i] == str[i+1]
      count += 1
    else
      compressed += str[i] + count.to_s
      compressed_length += 2
      count = 1
    end

    return str if compressed_length >= original_length
  end

  return compressed
end
