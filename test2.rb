arr = [{ a: 1, b: 2, c: 45 }, { d: 123, c: 12 }, { e: 87 }]

# массив ключей с повторениями
keys_array = arr.map { |element| element.keys }.flatten
puts keys_array.inspect

# массив ключей без повторений
uniq_keys_array = arr.map { |element| element.keys }.flatten.uniq
puts uniq_keys_array.inspect

# массив всех значений
values_array = arr.map { |element| element.values }.flatten
puts values_array.inspect

# сумма всех значений
sum_of_values = arr.map { |element| element.values }.flatten.sum
puts sum_of_values
