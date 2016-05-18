def even_fibonacci_sum(limit)
  fib = 1
  fib_sec = 1
  fibs = []
  while fib_sec < limit
    fib_new = fib + fib_sec
    fib = fib_sec
    fib_sec = fib_new
    fibs << fib_sec if (fib_sec < limit) && (fib_sec %2 == 0)
  end
  fibs.inject(:+)
end
