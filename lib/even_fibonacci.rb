# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  summable = Array.new
  num1, num2 = 1, 2
  while num2 < limit do
    if num2 % 2 == 0
        summable.push(num2)
    end
     num1, num2 = num2, num1 + num2
  end
  return summable.reduce(:+)
end


