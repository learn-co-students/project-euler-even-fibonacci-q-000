
def even_fibonacci_sum(limit)
  allFib = [1,1]
  while allFib[-1]<limit && (allFib[-1]+allFib[-2]) <limit
    allFib.push(allFib[-1]+allFib[-2])
  end
  evenFib = allFib.delete_if &:odd?
  return evenFib.inject(:+)
end