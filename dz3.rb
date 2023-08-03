m = [1, 1, 2, 5, 3, 3, 1, 2]
def dublicat(c)
  b = []
  c.each {|i| b << i unless b.include? i}
  return b
end
p dublicat(m)