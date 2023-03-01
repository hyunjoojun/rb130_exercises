def step(strating, ending, increment)
  value = strating
  until value > ending
    yield(value)
    break if value >= ending

    value += increment
  end
  value
end

p step(1, 10, 3) { |value| puts "value = #{value}" }
