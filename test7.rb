LOGIC = { "green" => "идти", "red" => "стоять", "yellow" => "ждать" }

def action_for_color(color)
  LOGIC[color]
end

def console_program
  puts "Введите цвет"
  color = gets.chomp
  input_valid?(color) ? (puts action_for_color(color)) : (puts "Неверный формат ввода")
end

def input_valid?(input)
  LOGIC.has_key?(input)
end

console_program
