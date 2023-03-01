def divisors(number)
  1.upto(number).select do |num|
    (number % num).zero?
  end
end

def divisors2(num)
  result = []
  1.upto(Math.sqrt(num)) do |divisor|
    if (num % divisor).zero?
      result << divisor
      result << num / divisor
    end
  end
  result.uniq.sort
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
