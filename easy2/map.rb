def map(arr)
  result = []
  arr.each { |ele| result << yield(ele) }
  result
end

def map2(arr)
  arr.each_with_object([]) do |ele, result|
    result << yield(ele)
  end
end

def map3(arr, &block)
  arr.each_with_object([]) do |ele, result|
    result << block.call(ele)
  end
end

p map3([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map3([]) { |value| true } == []
p map3(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map3(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map3([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]
p map3({ a: 1, b: 2 }) { |_, value| value += 1 }
