def series_sum(n)
  k = 1.00 # делитель
  p = 1.00 # делимое
  arr_of_divs = [] # сюда будем класть дроби

  if n == 0 # исключение для 0
    res = "0.00"
  else
    n.times do
      arr_of_divs << p/k # пихаем частное в массив
      k += 3.00 # увеличиваем k
    end

    # если длина строки 3 символа ("1.0"), добавляем "0", иначе складываем все получившиеся дроби, округляем до двух знаков после запятой и переводим в строку
    res.to_s.length == 3 ? res = res + "0" : res = arr_of_divs.inject(:+).round(2).to_s
  end

  res
end
