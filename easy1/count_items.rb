def count(arr)
  true_count = 0
  0.upto(arr.size - 1) do |index|
    true_count += 1 if yield(arr[index])
  end
  true_count
end

# def count(arr, &block)
#   count = 0
#   arr.each do |ele|
#     count += 1 if block.call(ele)
#   end
#   count
# end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2
