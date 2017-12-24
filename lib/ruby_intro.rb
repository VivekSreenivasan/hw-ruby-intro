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
    for j in 0..length-1
      if arr[j] + arr[i] > largest
        largest = arr[j] + arr[i]
      end
    end
  end
  return largest
end

def sum_to_n?(arr, n)
  largest = 0
  length = arr.length

  for i in 0..length-2
    j = i+1
    for j in 0..length-1
      if arr[j] + arr[i] == n
        return true
      end
    end
  end
  return false
end


# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  vowels = "AEIOUaeiou"
  return vowels.include? s[0]
end


def binary_multiple_of_4?(s)
  unless s == "0"
      if s=~ /^[0-1]+$/
        return s.to_i(2) % 4 == 0
      end
  end
  return false
end


# Part 3

class BookInStock
  def initialize(isbn,price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def isbn
    @isbn
  end
  def price=(price)
    @price = price
  end
  def price
    @price
  end
  def price_as_string
    format("$%.2f",@price)
  end
end
