# # Implement your procedural solution here!

# =begin
#   number_1 = 1
#   number_2 = 2
#   while loop makes number_n1 and number_n2
#   outputs number_1 and number_2 and number_n1 etc

#   array = [1, 2]

#   array.each{|x| x += }
# =end


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


# array = [1, 2]
# limit = 10
# array2 = [1, 2]

# until limit == 0
#   add = array2[0].to_i + array2[1].to_i
#   array << add
#   array2.shift
#   array << array2
#   limit -= 1
# end


# puts array






# def even_fibonacci_sum(limit = 10)
#   numbers = [1, 2]
#   holding = [1, 2]
#   next_number = 0

#   while numbers.count <= limit
#     numbers.each do |x|
#       next_number += x
#       holding << next_number
#       numbers << holding.shift
#     end
#   end

#   numbers.each do |x|
#     if x.to_i.odd?
#       numbers.delete(x)
#     end
#   end

#   return numbers
# end

# def collect_multiples(limit)
#   numbers = Array.new
#   until limit == 0
#     if 
#       numbers << limit
#     end
#       limit -= 1
#   end
#   numbers.shift
#   return numbers.sort
# end

# def even_fibonacci_sum(limit)
#   numbers = [1, 2]

#   numbers.each{|x| }


#   sum = 0
#   collect_multiples(limit).each{|x| sum += x }
#   sum
# end
#   