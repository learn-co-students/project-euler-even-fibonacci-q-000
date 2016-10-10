class EvenFibonacci

	def initialize(limit)
		@limit = limit
	end

	def sum
		even_fibonacci_numbers.inject(0) {|sum, x| sum + x}
	end

	def even_fibonacci_numbers
		array = [1, 2]
		while array[-1] < @limit
			array << array[-1] + array[-2]
		end
		array.select {|num| num.even? && num < @limit}
	end

end