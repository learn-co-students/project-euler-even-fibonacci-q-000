# Implement your procedural solution here!
def even_fibonacci_sum(num)
  sequence=[1,2]
  for x in (2..num-1)
  sequence[x-2]+sequence[x-1] > num ? break : sequence[x]=sequence[x-2]+sequence[x-1]
  end
  sum_arr=sequence.select{|n| n%2==0}
  sum_arr.reduce(:+)
end
