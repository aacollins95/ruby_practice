def add(x,y)
  return x+y
end

def subtract(x,y)
  return x-y
end

def sum(vals)
  sum = 0
  vals.each do |val|
    sum += val
  end
  return sum
end

def multiply(vals)
  prod = 1
  vals.each do |val|
    prod *= val
  end
  return prod
end

def power(x,y)
  return x**y
end
