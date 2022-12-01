def max_in_array(arr)
  arr.max(2)
end

def min_in_array(arr)
  arr.min(2)
end

arr = [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893]

puts max_in_array(arr)
puts min_in_array(arr)
