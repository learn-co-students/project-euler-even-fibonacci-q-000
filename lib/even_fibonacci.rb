# Implement your procedural solution here!

# A fibonacci sequence is a sequence of numbers starting with 1 and 2. Each new fibonacci number in the sequence is the sum of the previous 2 fibonacci numbers.
# fibonacci_sequence() returns an array of all fibonacci numbers up until the limit passed.
def fibonacci_sequence(limit)
  fib_seq = [1,2]
  i = 1
  until fib_seq[i] + fib_seq[i-1] > limit
    fib_seq.push(fib_seq[i] + fib_seq[i-1])
    i += 1
  end

  return fib_seq
end

# Takes a limit and returns a sum of all the even fibonacci numbers.
def even_fibonacci_sum(limit)
  fib_seq = fibonacci_sequence(limit)
  sum = 0
  fib_seq.each{|fib_num| fib_num%2 == 0 ? (sum += fib_num) : ()}

  return sum
end