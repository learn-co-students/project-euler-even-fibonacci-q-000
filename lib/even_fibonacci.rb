def fibs(lim)
  fibs = [1, 2]
  f1 = 1
  f2 = 2
  new = 0
  while (f1 + f2) < lim
    new = f1 + f2
    fibs << new
    f1 = f2
    f2 = new
  end
  fibs
end

def even_fibs(lim)
  evens = Array.new
  fibs(lim).each do |i|
    if i % 2 == 0
      evens << i
    end
  end
  evens
end

def even_fibonacci_sum(lim)
  sum = 0
  even_fibs(lim).each do |i|
    sum = i + sum
  end
  sum
end











