# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  prev = 1
  cur = 1
  temp = 0
  sum = 0
  while(cur+prev < limit)
    temp = cur
    cur += prev
    prev = temp
    if(cur%2==0)
      sum+=cur
    end
  end
  sum
end