# Fibonacci: return the nth Fibonacci number
def fib(n)
  raise ArgumentError, "n must be >= 0" if n < 0
  return 0 if n == 0
  return 1 if n == 1
  fib(n - 1) + fib(n - 2)
end

# Palindrome: check if number/string is a palindrome
def isPalindrome(n)
  str = n.to_s
  str == str.reverse
end

# nthmax: return the nth largest element in an array
def nthmax(n, a)
  raise ArgumentError, "n out of range" if n >= a.length
  a.sort.reverse[n]
end

# freq: return a hash with frequency counts of each element in string
def freq(s)
  counts = Hash.new(0)
  s.each_char { |c| counts[c] += 1 }
  counts
end

# zipHash: combine two arrays into a hash
def zipHash(arr1, arr2)
  raise ArgumentError, "arrays must be same length" if arr1.length != arr2.length
  Hash[arr1.zip(arr2)]
end

# hashToArray: convert hash to array of [key, value] pairs
def hashToArray(hash)
  hash.to_a
end
