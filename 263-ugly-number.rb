# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  return false if num < 1
  return true if num == 1
    
  valid_primes = [2, 3, 5]
  valid_primes.each do |prime|
    while num % prime == 0
      num = num / prime
    end
  end 
  num == 1
end
