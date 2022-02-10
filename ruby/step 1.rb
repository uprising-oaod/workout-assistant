# Шпаргалка - Основны языка Ruby с примерами
# В файлах *.rb будет код, который по тем или иным причинам, неудобно или невозможно выполнить в Jupyter Notebook



# Пример создания псевдонима

class String
  alias / :split
end


strings = "строка строка строка строка "

p (strings / " ").size


# Перенос по словам

class String
  def wrap(col = 80)
      gsub(/(.{1,#{col}})( +|$\n?)|(.{1,#{col}})/, "\\1\\3\n")
  end
end

p "wrapping text with regular expressions".wrap(10)

# Методы преобразования к строке
# Если нужно, чтобы ваши объекты упорядочивались и сравнивались с обычными строками, следует применять примесь Comparable и единственный специальный метод to_str. Наличие этого метода у вашего объекта — знак для Ruby, что для сравнения следует применять не встроенный в String метод, а ваш.

class Container
  include Comparable
  def to_str
      "контейнер"
  end

  def to_s
      "контейнер"
  end

  def <=>(other)
      to_s <=> other.to_s
  end
end

cont = Container.new

p "контейнер" == cont    #=> true
