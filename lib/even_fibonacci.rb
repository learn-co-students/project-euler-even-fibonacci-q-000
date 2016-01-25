def even_fibonacci_sum(n)
  return n if n < 2
  return n if n.odd?
  even_fibonacci_sum(n-1) + even_fibonacci_sum(n-2)
end
