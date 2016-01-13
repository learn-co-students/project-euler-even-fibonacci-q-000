# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  array = [1,2]
  while array.last(2).inject(:+) <= limit
    p array.push(array.last(2).inject(:+))
  end

  p array.select {|i| i % 2 == 0 }.inject(:+)
end
