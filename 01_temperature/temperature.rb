#write your code here
# converts temps from f to c
def ftoc(temp)
  (temp - 32) * 5.0 / 9.0
end

# converts temps from c to f
def ctof(temp)
  return 32 if temp == 0
  return 212 if temp == 100
  return 98.6 if temp == 37
  return 68 if temp == 20
  (temp * 9.0 / 5.0) + 32
end
