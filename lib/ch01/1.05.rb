# One Away

def one_away(init, final)
  return true if init == final

  length_difference = init.length - final.length
  length_difference_abs = length_difference.abs

  if length_difference_abs == 0
    # must be one away by replacement
    letter_diff_count = 0.upto(init.length).count {|i| init[i] != final[i]}
    letter_diff_count <= 1
  elsif length_difference_abs == 1
    # must be one away by insertion
    shortest_string = length_difference < 0 ? init : final
    longest_string = length_difference > 0 ? init : final
    short_index = 0
    long_index = 0

    while short_index < shortest_string.length && long_index < longest_string.length
      if shortest_string[short_index] == longest_string[long_index]
        short_index += 1
        long_index += 1
      elsif short_index == long_index
        # skip one letter in longest string the first time chars don't match
        long_index += 1
      else
        return false
      end
    end

    true
  else
    false
  end 
end
