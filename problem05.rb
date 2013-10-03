def prime_factors_and_powers(n)
  factors = primes.collect {|p| p if n % p == 0}.compact
  h = factors.inject({}) {|hash, f| hash[f] = Math.log(n,f).to_i ; hash }
  h
end

def primes
  [2,3,5,7,11,13,17,19]
end

arr = []

(2..20).each do |n|
  arr << prime_factors_and_powers(n)
end

new_h = {}

arr.each do |hash|
  hash.each do |k,v|
    if new_h.keys.include?(k)
      if v > new_h[k]
        new_h[k] = v
      end
    else
      new_h[k] = v
    end
  end
end

product = 1

new_h.each do |k,v|
  product = product * (k ** v)
end