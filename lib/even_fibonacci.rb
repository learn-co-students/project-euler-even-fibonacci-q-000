# Implement your procedural solution here!
# describe "#even_fibonacci_sum" do
#   it 'returns the correct sum when the limit is 10' do
#     expect(even_fibonacci_sum(10)).to eq(10)
#   end
#
#   it 'returns the correct sum when the limit is 100' do
#     expect(even_fibonacci_sum(100)).to eq(44)
#   end
#
#   it 'returns the correct sum when the limit is 4000000' do
#     expect(even_fibonacci_sum(4000000)).to eq(4613732)
#   end
# end

require 'pry'

def even_fibonacci_sum(limit)
  fib = 1
  fib_sec = 1
  even_fib_sum = 0
  fibs = []
  while fib_sec < limit
    fib_new = fib + fib_sec
    fib = fib_sec
    fib_sec = fib_new
    if (fib_sec < limit) && (fib_sec %2 == 0)
      fibs << fib_sec
    end
  end
  fibs.inject(:+)
end
