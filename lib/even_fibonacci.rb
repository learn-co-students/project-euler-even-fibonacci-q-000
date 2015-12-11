# Implement your procedural solution here!
def even_fibonacci_sum(limit)
a = [1,2]

while a[-2] + a[-1] < limit
  a << a[-2] + a[-1] 
end

sum = 0
a.each { |x| sum += x if x.even? }

sum
end