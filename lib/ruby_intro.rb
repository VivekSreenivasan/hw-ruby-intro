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
  length = arr.length
  if length == 0
    return 0
  elsif length == 1
    return arr[0]
  end
  for i in 0..length-2
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
  largest = 0
  length = arr.length

  for i in 0..length
    if i == n
      return false
    end
  end

  for i in 0..length-2
    j = i+1
    for j in 0..length
      if arr[j] + arr[i] == n
        return true
      end
    end
  end
  return false
  
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
