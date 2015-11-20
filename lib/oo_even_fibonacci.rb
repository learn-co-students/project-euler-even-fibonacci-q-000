class EvenFibonacci
  def initialize (lim)
    @lim = lim

  def fibs
    fibs = [1, 2]
    f1 = 1
    f2 = 2
    new = 0
    while (f1 + f2) < @lim
      new = f1 + f2
      fibs << new
      f1 = f2
      f2 = new
    end
    fibs
  end

  def even_fibs
    evens = Array.new
    fibs.each do |i|
      if i % 2 == 0
        evens << i
      end
    end
    evens
  end
  end

  def sum
    sum = 0
    even_fibs.each do |i|
      sum = i + sum
    end
    sum
  end
end













