# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  if arr.length == 0
    return 0
  end
  sum = 0
  for number in arr
    sum+=number
  end
  return sum
end

def max_2_sum(arr)
  largest = 0
  length = arr.length-1
  for i in 0..length-1
    j = i+1
    for j in 0..length
      if arr[j] + arr[i] > largest

        largest = arr[j]+arr[i]
      end
    end
  end
  return largest
end

def sum_to_n?(arr, n)
  return sum(arr) == n
end

# Part 2

def hello(name)
  return "Hello, " + name
end
=begin
def starts_with_consonant?(s)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
=end
