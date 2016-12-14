# Implement your object-oriented solution here!

class EvenFibonacci

	attr_accessor :limit

	def initialize(limit)
		self.limit = limit
	end

	def fibonacci_terms
		@fibonacci_terms ||= generate_fibonacci_terms
	end

	def generate_fibonacci_terms

		if self.limit == 1
			return [1]
		elsif self.limit == 2
			return [1, 2]
		else
			fibonacci_terms = [1, 2]
			next_term = 3
			while next_term <= self.limit
				fibonacci_terms << next_term
				next_term = fibonacci_terms[-1] + fibonacci_terms[-2]
			end
			fibonacci_terms
		end

	end

	def even_fibonacci_terms
		@even_fibonacci_terms ||= fibonacci_terms.keep_if { |fibonacci_term| fibonacci_term.even? }
	end

	def sum
		@sum ||= even_fibonacci_terms.reduce { |sum, even_fibonacci_term| sum + even_fibonacci_term }
	end

end