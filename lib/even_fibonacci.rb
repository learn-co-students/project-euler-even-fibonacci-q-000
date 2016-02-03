# Implement your procedural solution here!
def even_fibonacci_sum(soft_limit)
  hard_limit=4e6

  fibs = [1,2]
  even_fibs = Array.new(1, 2)

  while fibs.last<=soft_limit && fibs.last<=hard_limit
    fibs.push(fibs[-1] + fibs[-2])
    if fibs[-1]%2==0
      even_fibs.push(fibs[-1])
    end
  end

  if even_fibs.last > soft_limit
    even_fibs.pop
  end
  return even_fibs.reduce(0, :+)
end
