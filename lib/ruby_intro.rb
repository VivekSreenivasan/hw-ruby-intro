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
  largest = -10000000
  length = arr.length
  if length == 0
    return 0
  elsif length == 1
    return arr[0]
  end
  for i in 0..length-2
    j = i+1
    for j in 0..length-1
      unless j == i
        if arr[j] + arr[i] > largest

          largest = arr[j] + arr[i]
        end
      end
    end
  end
  return largest
end
puts max_2_sum([1,-2,-3,-4,-5])

def sum_to_n?(arr, n)
  largest = 0
  length = arr.length

  for i in 0..length-2
    j = i+1
    for j in 0..length-1
      unless j == i
        if arr[j] + arr[i] == n
          return true
        end
      end
    end
  end
  return false
end
puts sum_to_n?([-1,-2,3,4,6,-8], 12)

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  unless s == "" || !(s.match(/^[[:alpha:]]+$/))
    vowels = "AEIOUaeiou"


      return !(vowels.include? s[0])

  end
  return false
end

puts starts_with_consonant?("#ksjdfkajd;s")


def binary_multiple_of_4?(s)
  if s=~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0
  end
  return false
end
 puts binary_multiple_of_4?("0")

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
