# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  start = 0
  incr = 1
  result = 0
  sum = 0

  while (result < limit) do
    if start + incr > limit
      break
    end

    result = start + incr

    if result % 2 == 0
      sum += result
    end

    start = incr
    incr = result
  end

  return sum
end