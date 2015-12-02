# # Implement your procedural solution here!

def even_fibonacci_sum(limit)
  fibonacci1 = 1
  fibonacci2 = 2
  fibonacci3 = 3
  array = [1, 2, 3]
  fibonacci4 = 0

  while fibonacci4 < limit 
        fibonacci4 = (fibonacci2 + fibonacci3)
        array << fibonacci4
        fibonacci1 = fibonacci2
        fibonacci2 = fibonacci3
        fibonacci3 = fibonacci4
        fibonacci4 = (fibonacci2 + fibonacci3)
  end

  array.delete_if {|x| x.odd? != false}

  puts "Array"
  puts array

  sum = array.reduce(:+)
  puts "And Sum:"
  return sum
  
end
