
  def even_fibonacci_sum(limit)
  multiple = [1,2,3]
  counter = 2
  sum = 2
  fibonacci = 3
  while (fibonacci < limit) do
    counter += 1
    multiple << (multiple[counter-1] + multiple[counter-2])
    fibonacci = multiple[counter]
    if (fibonacci%2==0 && fibonacci < limit)
      sum += fibonacci
    end
  end
  return sum
end