def even_fibonacci_sum(limit)
	even_fibonacci_numbers(limit).inject(0) {|sum, x| sum + x}
end

def even_fibonacci_numbers(limit)
	array = [1, 2]
	while array[-1] < limit
		 array << (array[-1] + array[-2])
	end
	array.select {|num| num.even? && num < limit}
end