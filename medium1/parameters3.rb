items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# 1.
gather(items) do |*item, last_item|
  puts item.join(', ')
  puts last_item
end

# 2.
gather(items) do |first_item, *item, last_item|
  puts first_item
  puts item.join(', ')
  puts last_item
end

# 3.
gather(items) do |first_item, *item|
  puts first_item
  puts item.join(', ')
end

# 4.
gather(items) do |item1, item2, item3, item4|
  puts "#{item1}, #{item2}, #{item3}, and #{item4}"
end
