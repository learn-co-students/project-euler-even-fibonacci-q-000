# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fibonacci_series = [1, 2]
  sum = 2
  while fibonacci_series[-2] + fibonacci_series[-1] <= limit do
    if (fibonacci_series[-2] + fibonacci_series[-1]) % 2 == 0
      sum += fibonacci_series[-2] + fibonacci_series[-1]
    end
    fibonacci_series << fibonacci_series[-2] + fibonacci_series[-1]
  end
  sum
end