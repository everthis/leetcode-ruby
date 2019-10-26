# @param {Integer[]} a
# @param {Integer[]} b
# @param {Integer[]} c
# @param {Integer[]} d
# @return {Integer}
def four_sum_count(a, b, c, d)
  h = Hash.new(0); res = 0
  a.each{ |el_a| b.each{ |el_b| h[el_a + el_b] += 1 } }
  c.each{ |el_c| d.each{ |el_d| res += h[-(el_c + el_d)] } }
  return res    
end
