require 'set'
# When done, submit this entire file to the autograder.

# Part 1

# constants
NEGATIVE_INFINITY = -1/0.0 
# note, if we put it inside a function, it leads to error: dynamic constant assignment NEGATIVE_INFINITY = -1/0.0

def sum arr
    total = 0
    for element in arr do
      total = total + element
    end
    return total
end

def max_2_sum arr
  len = arr.length
  
  if len < 2
    return sum arr
  end
  
  largest = NEGATIVE_INFINITY
  second_largest = NEGATIVE_INFINITY
  
  for element in arr
    if element >= second_largest
      second_largest = element
      if second_largest >= largest # swap
        temp = largest
        largest = second_largest
        second_largest = temp
      end
    end
  end
  return second_largest + largest
end

def sum_to_n? arr, n
    for number, index in arr.each_with_index
        complement = n - number
        check_array = arr[0,index].concat(arr[index+1..-1]) # array without the current element
        if check_array.include?(complement)
            return true
        end
    end
    return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  consonant_regex = /^[bcdfghjklmnpqrstvwxys]/i
  return consonant_regex.match(s)
end

def binary_multiple_of_4? s
  if /^[01]+$/.match(s) # one or more 0 or 1 means binary
    return /(00$)|(^0*$)/.match(s) # ending with 00, means multiple of 4
  end
  return false

end

# Part 3

class BookInStock
  
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn == "" or price <= 0
      raise ArgumentError.new
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%0.2f" % @price
  end
  
end
