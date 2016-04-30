# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  sum = 0
	a, b = 1, 2
	until b >= limit
		if b % 2 == 0
			sum += b
		end
		a, b = b, a + b
	end
	return sum
end

puts even_fibonacci_sum(5)
puts even_fibonacci_sum(10)
