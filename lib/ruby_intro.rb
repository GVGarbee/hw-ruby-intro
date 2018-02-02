# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return arr.size
  else
    return arr.reduce(:+)
  end
end

def max_2_sum arr
  if arr.empty?
    return 0
  else if arr.size == 1
    return arr.pop
  else
    return arr.max(2).reduce(:+)
    end end 
end

def sum_to_n? arr, n
  if arr.size == 1
    return false
  end
  !!arr.find{|x| arr.include?(n-x)}
end

# Part 2

def hello(name)
  str = "Hello, "
  str.concat(name)
  return str
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if (s) == "0"
    return true
  end
  if /^[01]*(00)$/.match(s)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def isbn=(isbn)
    if isbn == ''
      raise ArgumentError.new("Please give valid isbn") 
    else
      @isbn = isbn
    end
  end
  def price
    @price
  end
  def price=(price)
    if price <= 0.0
      raise ArgumentError.new("Must have a positive price number")
    else
      @price = price
    end
  end
  def price_as_string
    return "$" + sprintf("%.2f", @price)
  end
end
