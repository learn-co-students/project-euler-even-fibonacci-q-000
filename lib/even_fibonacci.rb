# Implement your procedural solution here!

def even_fibonacci_sum(limit)
  fibonaccis = []
  i, first, second = 0, 0, 1
  while i < limit
    i = first + second
    break if i > limit
    fibonaccis << i if i.even?
    first = second
    second = i
  end
  fibonaccis.reduce(:+)
end
