def compute(argument=nil)
  block_given? ? yield(argument) : 'Does not compute.'
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'

p compute('a') { |a| a + 'b' } == 'ab'
p compute(5) { |num| num + 1 } == 6
p compute('hello') == 'Does not compute.'
