# Implement your procedural solution here!
#def even_fibonacci_sum(limit)
#  array = []

#  (1...4000000).each do |i|
#    num = i + 1
#    if num % 2 == 0
 #     array << num
#    end
#  end
#
#  sum = 0
#  array.each do |i|
#    if i <= limit
#      sum += i
#    end
#  end

#  return sum
#end

def even_fibonacci_sum(limit)
  x, z = 1, 2
  sum = 0
  
  while (z < limit)
    if ( z % 2 == 0)
      sum += z
    end
    x, z = z, x + z
  end
  return sum
    
end

