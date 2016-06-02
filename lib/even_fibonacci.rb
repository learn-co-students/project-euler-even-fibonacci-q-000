def even_fibonacci_sum(limit)
  array = [1, 2]
  (3..limit).each {|number| array << number if number == array[-2] + array[-1]}
  array.delete_if {|number| number.odd?}.inject(0, :+)
end