def _X_(r, e):
 len = r.size
 x = [0] * len

 for i in 0..len-1 do
  new_pos = (i + e) % len
  x[new_pos] = r[i]
 end

 return x