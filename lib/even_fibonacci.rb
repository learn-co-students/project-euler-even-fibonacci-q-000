# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  array = [1, 2]
  i = 0

  loop do
    i = array[array.size - 1] + array[array.size - 2]
    if i < limit
      array << i
    else
      break
    end
  end
  #puts array

  sum = 0
  array.each do |i|
    if i.even?
      sum += i
    end
  end
  #puts "SUM: #{sum}"
  return sum
end

#even_fibonacci_sum(100)