# @param {Integer} n
# @return {Integer}
def nth_ugly_number(n)
  uglies = [1]
  i_2 = i_3 = i_5 = 0
  (n-1).times do
    min = [uglies[i_2]*2, uglies[i_3]*3, uglies[i_5]*5].min
    uglies << min
    i_2 += 1 if min % 2 == 0
    i_3 += 1 if min % 3 == 0
    i_5 += 1 if min % 5 == 0
  end
  uglies.last
end
