def even_fibonacci_sum(limit)
  new_item = []
  curr = 0
    next_num = 1
    temp = 0
  while next_num < limit
        temp = curr + next_num
        curr = next_num
        next_num = temp
    if next_num % 2 == 0 && next_num < limit
  then new_item << next_num
end
end
new_item.inject(:+)
end


