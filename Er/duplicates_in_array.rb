# https://leetcode.com/problems/find-all-duplicates-in-an-array/description/
# Beats 154ms 14.29% | 221.73MB 28.57%
def find_duplicates(nums)
  x = []
  d = {}

  nums.each_with_index do |n, i|
    x.push(n) if d[n]
    d[n] = 1
  end

  return x
end