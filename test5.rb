arr = [nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil, :foo, :bar, 25, 45, :apple, "bar", nil]

amount_hash = arr.map { |element| [element, arr.count(element)] }.to_h
puts amount_hash
