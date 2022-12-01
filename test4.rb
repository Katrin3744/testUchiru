arr = [nil, 1, :foo]

# метод массивов compact возвращает новый массив, не содержащий nil
arr_without_nil = arr.compact
puts arr_without_nil.inspect

# для удаления из исходного массива используется bang метод
arr.compact!
puts arr.inspect
