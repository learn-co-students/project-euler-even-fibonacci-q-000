# Implement your procedural solution here!

def even_fibonacci_sum(limit)
 a = 1
 b = 2
 a = [1, 2]
  c = [2]
  d = []
  for i in 2..(limit - 1)
    a[i] = a[i - 1] + a[i - 2]
    if a[i].to_i < limit && a[i].to_i.even?
      c << a[i]
    end
    end
  c.reduce(:+)
end

