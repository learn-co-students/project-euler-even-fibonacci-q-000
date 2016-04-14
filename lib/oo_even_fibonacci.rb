# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
 a = 1
 b = 2
 a = [1, 2]
  c = [2]
  d = []
  for i in 2..(1000)
    a[i] = a[i - 1] + a[i - 2]
    if a[i].to_i < @limit && a[i].to_i.even?
      c << a[i]
    end
    end
  c.reduce(:+)
end
end
