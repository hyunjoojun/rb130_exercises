def max_by(arr)
  return nil if arr.empty?

  max_value = arr.first
  largest = yield(max_value)

  arr.each do |ele|
    yield_value = yield(ele)
    if largest < yield_value
      largest = yield_value
      max_value = ele
    end
  end
  max_value
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
