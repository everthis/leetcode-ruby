# @param {Integer[]} nums
# @return {String[]}
def find_relative_ranks(nums)
  m = Hash.new
  m[1] =   'Gold Medal'
  m[2] = 'Silver Medal'
  m[3] = 'Bronze Medal'

  ranks = nums.dup
  nums.to_enum.with_index.map(&->(num, idx) { [num, idx] })
      .sort_by(&:first).reverse
      .each_with_index { |(_, idx), rank| ranks[idx] = m.fetch(rank + 1, "#{rank + 1}") }
  ranks
end

