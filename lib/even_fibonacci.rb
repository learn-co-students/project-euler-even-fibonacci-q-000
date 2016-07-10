# Implement your procedural solution here!

=begin
def even_fibonacci_sum(limit)
   array = [ 1, 2]    #first two numbers
  while (array[-1] + array[-2]) < limit
 array << array[-1] + array[-2] # next num in sequence
 array
end

  sum = 0
    num_array.each {|n| sum += n if n.even?}  #Add if n is even
    sum
end
=end



def even_fibonacci_sum(limit)     #10
  n1 = 1
  n2 = 2
  array = [n1, n2]

  while n1+n2 < limit          # 1 & 2 less than 10
    sum = n1 + n2              # 3 =  1 + 2
    array << sum               # place 3 as the next array number so [ 1, 2, 3]
    n1 = n2                    # n1 is now 2
    n2 = sum                   # n2 is now 3
  end
    sum = 0

    array.each do |n|
       sum += n if n.even?   #through each number in array  #Add if n is even
  end
  sum
end
