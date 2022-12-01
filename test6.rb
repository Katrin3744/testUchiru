def cel_to_f(degrees)
  degrees * (9.0 / 5.0) + 32.0
end

def console_program
  puts "Введите число градусов"
  degrees = gets.chomp
  input_valid?(degrees) ? (puts cel_to_f(degrees.to_f)) : (puts "Неверный формат числа")
end

def input_valid?(input)
  input =~ /^[-+]?\d*\.?\d*$/
end

console_program
