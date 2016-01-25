# def fibo(n, cache={})
#   if n == 0 || n == 1
#     return n
#   end
#   cache[n] ||= fibo(n-1, cache) + fibo(n-2, cache)
# end 
@cache = [0,1]

def even_fibonacci_sum(limit)
  # check if result is in cache
  # if it is then return it, otherwise do a calculation and save result
  return @cache[n] if @cache[n]

  # calculation
  @cache[n] = fibo(n-1) + fibo(n-2)
end


