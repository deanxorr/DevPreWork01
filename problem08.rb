def largest_product_in_num(bignum)
  array = bignum.to_s.chars.to_a
  markov(array).map do |set|
    arr_prod(set)
  end.max
end


def markov(array)
  index = 0
  arr = []
  (array.length - 5).times do
    arr << array.slice(index,5)
    index += 1
  end
  arr
end

def arr_prod(array)
  prod = 1
  array.each do |e|
    prod = prod * e.to_i
  end
  prod
end