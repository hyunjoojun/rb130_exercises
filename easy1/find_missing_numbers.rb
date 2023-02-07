def missing(arr)
  result = []
  range = ((arr.first)..(arr.last)).to_a
  range.each do |num|
    result << num unless arr.include?(num)
  end
  result
end

# def missing(arr)
#   (arr[0]..arr[-1]).to_a - arr
# end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
