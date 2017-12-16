# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit=limit
  end

  def fibonacci(n)
    if n==1
      1
    elsif n==2
      2
    elsif n>2
      fibonacci(n-1)+fibonacci(n-2)
    end
  end

  def fib_array
    array=[]
    n=1
    until fibonacci(n)>@limit
      array.push(fibonacci(n))
      n+=1
    end
    return array
  end

  def collect_even_fib
    fib_array.select{|a| a.even?}
  end

  def sum
    collect_even_fib.reduce(:+)
  end
end
