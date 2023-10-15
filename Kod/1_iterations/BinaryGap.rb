def solution(n)
  b = n.to_s(2)
  zeros = b.split('1')
  zeros.pop if n % 2 == 0
  return 0 if zeros.empty?
  return zeros.map {|x| x.length}.max
end