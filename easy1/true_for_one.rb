def one?(collection)
  true_count = 0
  collection.each { |ele| true_count += 1 if yield(ele) }
  return false if true_count > 1

  true_count == 1
end

# def one?(arr, &block)
#   true_count = 0
#   arr.each do |ele|
#     true_count += 1 if block.call(ele)
#     return false if true_count > 1
#   end
#   true_count == 1
# end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false
