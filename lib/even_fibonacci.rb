def even_fibonacci_sum(limit)
  fibonacci_sum(limit).select{ |e| e.even? }.inject(:+)
end

def fibonacci_sum(limit)
  n1 = 1
  n2 = 2

  array = [n1, n2]

  while n1+n2 < limit
    sum = n1 + n2
    array << sum
    n1 = n2
    n2 = sum
  end
  array

end

