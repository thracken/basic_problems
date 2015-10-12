def get_factors(number)
  factors = []
  (1..number).each do |i|
    if number % i == 0
      factors.push(i)
    end
  end
  return factors
end

def is_prime(number)
  if (get_factors(number).length == 2)
    return true
  else
    return false
  end
end

prime_factors = []
get_factors(6008514).each do |i|
  if is_prime(i) == true
    prime_factors.push(i)
  end
end

p prime_factors
p prime_factors.last
