# Implement your procedural solution here!

def fibonacci_terms(limit)

	if limit == 1
		return [1]
	elsif limit == 2
		return [1, 2]
	else
		fibonacci_terms = [1, 2]
		next_term = 3
		while next_term <= limit
			fibonacci_terms << next_term
			next_term = fibonacci_terms[-1] + fibonacci_terms[-2]
		end
		fibonacci_terms
	end

end

def even_fibonacci_terms(limit)
	fibonacci_terms(limit).keep_if { |fibonacci_term| fibonacci_term.even? }
end

def even_fibonacci_sum(limit)
	even_fibonacci_terms(limit).reduce { |sum, even_fibonacci_term| sum + even_fibonacci_term }
end