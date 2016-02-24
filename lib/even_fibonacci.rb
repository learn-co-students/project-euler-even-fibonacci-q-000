# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  sum = 0
  sum_fib = 0
  term1 = 1
  term2 = 1
  while (term1 < limit)
    sum = term1 + term2
    if sum < limit && sum % 2 == 0
      sum_fib += sum
    end
    term2 = term1
    term1 = sum
  end
  return sum_fib
end