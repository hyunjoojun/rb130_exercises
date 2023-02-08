def step(strating, ending, increment)
  value = strating
  until value > ending
    yield(value)
    value += increment
  end
  value
end

step(1, 10, 3) { |value| puts "value = #{value}" }
