# Implement your object-oriented solution here!
class EvenFibonacci
	def initialize(limit)
		@limit = limit
	end
	def sum
	  total = 0
		a, b = 1, 2
		until b >= @limit
			if b % 2 == 0
				total += b
			end
			a, b = b, a + b
		end
		return total
	end
end
