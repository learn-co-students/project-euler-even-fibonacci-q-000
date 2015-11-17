# Implement your procedural solution here!
def even_fibonacci_sum(lim)
  array = lim > 1 ? [1, 1] : []
  if !array.empty?
    until array[-1] + array[-2] > lim
    array << array[-1] + array[-2]
    end
    array = array [1..-1]
  end
  array.select {|num| num.even?}.inject(:+)
end
