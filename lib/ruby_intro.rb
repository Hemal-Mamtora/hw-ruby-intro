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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
