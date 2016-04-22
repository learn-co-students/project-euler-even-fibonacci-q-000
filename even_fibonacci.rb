# Implement your procedural solution here!
def even_fibonacci_sum
sum, a, b = 0, 1, 2
while b < 10
  sum += b if b.even?
  a, b = b, a + b
end
puts sum
end
even_fibonacci_sum