def find_prime_factors(num)
  factors = []
  greatest = 1
  (1..num).each do |factor|
    if num % factor == 0
      factors << factor
    end
  end
  factors.collect {|f| f if is_prime?(f) }.compact.max
end


def is_prime?(n)
  (2..(n-1)).each do |num|
    return false if n % num == 0
  end
  return true
end