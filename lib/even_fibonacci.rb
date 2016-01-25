# def fibo(n, cache={})
#   if n == 0 || n == 1
#     return n
#   end
#   cache[n] ||= fibo(n-1, cache) + fibo(n-2, cache)
# end 
@terms = Array.new

def even_fibonacci_sum(n)
  return n if n < 2
  if recursion % 2 == 0
    
  end
end

def recursion
  even_fibonacci_sum(n-1) + even_fibonacci_sum(n-2)
end
