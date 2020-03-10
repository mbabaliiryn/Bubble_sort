def bubble_sort(digit)
  n = digit.length
  loop do
    swapped = false
    (n - 1).times do |r|
      if digit[r] > digit[r + 1]
        digit[r], digit[r + 1] = digit[r + 1], digit[r]
        swapped = true
      end
    end
    break unless swapped
  end
  digit
end

def bubble_sort_by(array)
  x = 0
  loop do
    array[x], array[x + 1] = array[x + 1], array[x] if yield(array[x], array[x + 1]).positive?
    x += 1
    break if x >= array.length - 1
  end
  print array
end

bubble_sort_by(%w[hi hello hey kiss]) do |left, right|
  left.length - right.length
end
