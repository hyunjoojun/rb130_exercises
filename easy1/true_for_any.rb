# def any?(array)
#   counter = 0
#   while counter < array.size
#     return true if yield(array[counter])

#     counter += 1
#   end
#   false
# end

# def any?(collection)
#   collection.each { |item| return true if yield(item) }
#   false
# end

def any?(arr, &block)
  arr.each do |ele|
    return true if block.call(ele)
  end
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false
p any?({ a: 1, b: 3, c: 5, d: 6 }) { |_, value| value.even? } == true
