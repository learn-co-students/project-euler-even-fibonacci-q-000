# Implement your procedural solution here!
def even_fibonacci_sum(n)
  sum = 0
  f = 0
  n.times do |number|
    f= fibonacci(number)
    if f < n && f % 2 == 0
      sum += f
    end
    if f > n
      break
    end
  end
  sum
end

def fibonacci(n)
  if n == 0 || n == 1
    return 1
  else
    return (fibonacci(n-1)+fibonacci(n-2))
  end
end
