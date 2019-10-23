# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  return [] if !nums || nums.empty?
  size = nums.size
  return ["#{nums[0]}"] if size == 1
  result = []
  start = nums[0]
  last = nums[0]
  i = 1
  while i < size
    current = nums[i]
    if current - 1 != last
      result << result_string(start, last)
      start = current
    end
    last = current
    result << result_string(start, last) if i == (size - 1)
    i += 1
  end
  result
end

def result_string(start, last)
  return start != last ? "#{start}->#{last}" : "#{start}"
end
