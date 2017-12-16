def fibonacci(n)
  if n==1
    1
  elsif n==2
    2
  elsif n>2
    fibonacci(n-1)+fibonacci(n-2)
  end
end

def fib_array(limit)
  array=[]
  n=1
  until fibonacci(n)>limit
    array.push(fibonacci(n))
    n+=1
  end
  return array
end

def collect_even_fib(limit)
  fib_array(limit).select{|a| a.even?}
end

def even_fibonacci_sum(limit)
  collect_even_fib(limit).reduce(:+)
end
