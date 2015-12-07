def even_fibonacci_sum(limit)
  number1 = 1
  number2 = 2
  sum = 0
  while number1 < limit
  
    if number1 % 2 == 0
        sum = sum + number1
    end
   new_number = number1 + number2
   number1 = number2
   number2 = new_number
  end
   return sum
end
