# returns new array with the results
numbers = [9, 1, 0, 56, 4, 6, 8]
numbers.sort

# using sort_by method
numbers.sort_by(&:lenght)
def sort_by_smallest_digit(num)
  num.sort_by { |d| d[0].match(/[0-100]/) ? 0 : 1 }
end
sort_by_smallest_digit %w[9 1 0 56 4 6 8]

# implementing the yield method
def sort_digits
  yield '0'
  yield '1'
  yield '4'
  yield '6'
  yield '8'
  yield '9'
  yield '56'
end
sort_digits { |number| puts number.to_s }

# using the spaceship operator
[9, 1, 0, 56, 4, 6, 8].sort { |x, y| x <=> y }
