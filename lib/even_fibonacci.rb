# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fibbonacci = [1,2]
  next_number = 0
  even_sum = 0
  counter = 1
  until next_number >= limit
    next_number = fibbonacci[counter] + fibbonacci[counter - 1]
    fibbonacci << next_number
    counter += 1
  end
  if fibbonacci[counter] > limit
    fibbonacci.pop
  end
  fibbonacci.each do |number|
    if number.even?
      even_sum += number
    end
  end
  return even_sum
end
