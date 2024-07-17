#write your code here
# converts temps from f to c
def ftoc(temp)
  (temp - 32) * 5.0 / 9.0
end

# converts temps from c to f
def ctof(temp)
  (temp * 9.0 / 5.0) + 32
end
