# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  return arr.sum()
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return arr.max(2).sum()
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end
  
  for i in 0...(arr.length - 1)
    for j in (i + 1)... arr.length
      if arr[i] + arr[j] == number
        return true
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  return /^[^aeiou\d\W]/i =~ string
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if /^[0,1]*00$/ =~ string
    return true
  elsif string == "0"
    return true
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError.new()
    end
    
    @isbn, @price = isbn, price
  end
  
  def price_as_string
    string_price = "$%.2f" % @price
    return string_price
  end
end
