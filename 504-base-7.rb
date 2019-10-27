# @param {Integer} num
# @return {String}
def convert_to_base7(num)
  return "0" if num == 0
  result = ''
  alphabet = (0...7).map(&:to_s)
  negative = num < 0
  num = num.abs
  while num != 0
    num, digit = num.divmod(7)
    result = alphabet[digit] + result
  end
  negative ? '-' + result : result
end

# another

def convert_to_base7(num)
  num.to_s(7)
end
