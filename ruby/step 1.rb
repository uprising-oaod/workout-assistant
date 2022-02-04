# Шпаргалка - Основны языка Ruby с примерами

puts "Hello, Мир!"

# Вывод
puts "Hello"
p "Hello"

def a
  12
end

p a

# TODO: забыл как называется эта штука
puts "The total is #{def b; 5+2; end; b}"

# %w, %i, %q, %r, %x

p array = %w(apple orange coconut) # %w - создать массив из строк
p a = %w(1,2,3 4 5)
p array = %i(apple orange coconut) # %i - создать массив из символов
p string = %q(apple orange coconut) # %q - создать строку не используя кавычки
p string = %q(можно без кавычек, кавычки "экранируются")

p regular_expression = %r([0-9])

# Типы переменных
something = 1 # локальная
@something = 2 # инстансная
Something = 3   # константа
SOMETHING = 4 # константа
$something = 5 # глобальная

# Скобки и двоеточия не требуются, но могут быть использованы.
# Базовые правила:
# Скобки не нужны для метода без аргументов => def foo
# Скобки используются если есть аргументы => def foo(a, b, c)
# Скобки нужны для определния приоритета => (a.size + b.size) * 2


# Ternary operator
puts false ? "yes" : "no"

# Each with block
[1,2,3].each do |n|
  puts n
end

# Case statement
case 20
when 1..20 # Where 1..20 is a Range object.
  puts "Between 1 & 20"
when 21..40
  puts "Between 21 & 40"
else
  puts "Not within a valid range"
end