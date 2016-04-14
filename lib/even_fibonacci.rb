# Implement your procedural solution here!

def even_fibonacci_sum(limit)
 a = 1
 b = 2
 a = [1, 2]
  c = [2]
  for i in 2..(1000)
    a[i] = a[i - 1] + a[i - 2]
    if a[i].to_int < limit && a[i].to_int.even?
      c << a[i]
    end
    end
  c.reduce(:+)
end


