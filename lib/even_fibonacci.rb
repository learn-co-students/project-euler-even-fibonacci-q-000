# Implement your procedural solution here!
def even_fibonacci_sum(num)
  array = [1,2]
  n = 0
  while array[n] < num
    array << array[n] + array[n + 1]
    n += 1
  end
  array.delete_if {|n| n.odd? || n > num}.reduce(:+)
end
