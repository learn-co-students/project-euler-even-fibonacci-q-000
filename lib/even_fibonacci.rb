# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  sequence = [1,2]
  while sequence[-1] < limit
    sequence.push(sequence[-1] + sequence[-2])
  end
  sequence.keep_if{|num| num.even? && num < limit}.reduce(:+)
 end


