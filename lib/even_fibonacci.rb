# Implement your procedural solution here!
def even_fibonacci_sum(num)
  board = []
  f1 = 0
  f2 = 1
  fn = 0
while fn < num
  fn = f1 + f2
  break if fn > num
  board << fn if fn.even?
  f1 = f2
  f2 = fn
end
board.inject(:+)
end
