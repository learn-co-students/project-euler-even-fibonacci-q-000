# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
    @fibo = fibo
    @even_fibo = even_fibo
  end

  def fibo
    fibo = [1, 2]
    x = 0
    y = 1

    loop do
      z = fibo[x] + fibo[y]
      fibo << z
      x += 1
      y += 1
      if fibo.last > @limit
        fibo.pop
        break
      end
    end
    fibo
  end

  def even_fibo
    @fibo.select{|x| x.even?}
  end

  def sum
    @even_fibo.reduce(:+)
  end

end


