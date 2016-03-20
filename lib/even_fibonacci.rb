def even_fibonacci_sum(limit)
  even_sum = 0
  first_fibonacci, second_fibonacci = 1, 1

  while second_fibonacci < limit
    even_sum += second_fibonacci if second_fibonacci.even?

    fibonacci = first_fibonacci + second_fibonacci

    first_fibonacci, second_fibonacci = second_fibonacci, fibonacci
  end

  even_sum
end

