# Implement your procedural solution here!
def fibonacci(n)
  if n.between?(0,2)
    return n
  else
    return ((fibonacci(n-1)) + (fibonacci(n-2)))
  end
end

def even_fibonacci_sum(limit)
  even_fibonacci_array = []
  counter = 1
  while fibonacci(counter)<limit
    if fibonacci(counter).even?
      even_fibonacci_array << fibonacci(counter)
    end
  counter += 1
  end
  return even_fibonacci_array.reduce(:+)
end
