# Implement your procedural solution here!
def even_fibonacci_sum(limit)

  f1 = 1
  f2 = 2
  sum = 0
  until f2 >= limit
    if f2 % 2 == 0
      sum += f2
    end
    f3 = f1 + f2
    f1 = f2
    f2 = f3
  end
  sum
end
