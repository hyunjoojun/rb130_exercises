def zip(arr1, arr2)
  result = []
  0.upto(arr1.size - 1) do |index|
    result << [arr1[index], arr2[index]]
  end
  result
end

def zip2(arr1, arr2)
  result = []
  arr1.each_with_index do |ele, idx|
    result << [ele, arr2[idx]]
  end
  result
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
