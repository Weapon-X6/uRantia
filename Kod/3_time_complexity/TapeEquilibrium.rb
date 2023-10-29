def _X_(r)
  x = Float::INFINITY
  left_s = 0
  right_s = r.reduce(:+)

  (r.size - 1).times do |i|
    left_s += r[i]
    right_s -= r[i]
    diff = (left_s - right_s).abs

    x = [x, diff].min
  end

  x
end