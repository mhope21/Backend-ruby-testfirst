#write your code here
def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

# checks if array is empty, if so returns 0, otherwise adds each number in array to each other
def sum(array)
  sum_nums = 0
  if !array.empty?
    array.each do |num|
      sum_nums += num
    end
  end
  sum_nums 
end

# empty array returns 1, otherwise each number is multiplied by product of previous values
def multiply(*nums)
  return 1 if nums.empty?
  
  multi_nums = 1
  nums.each do |num|
    multi_nums *= num
  end
  multi_nums
end

def power(a,b)
  sol = 1
  b.times do
    sol *= a
  end
  sol 
end

# uses recursion, defines base case, then recursively calls factorial on each decremented number multiplying it by
# the number
def factorial(n)
  return 1 if n == 0
  n * factorial(n-1)
end