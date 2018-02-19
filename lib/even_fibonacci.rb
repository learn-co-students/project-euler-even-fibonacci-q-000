# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fibArr = [1, 2]
  lastNum = 2
  sum = 0

  while lastNum < limit do
    sum += lastNum if lastNum.even?

    nextNum = fibArr[fibArr.length-1] + fibArr[fibArr.length-2]
    fibArr.push(nextNum)

    lastNum = nextNum
  end

  return sum

end