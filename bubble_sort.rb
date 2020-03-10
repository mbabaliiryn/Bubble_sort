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

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left[0] < right[0]
    [left[0]] + merge(left[1..left.length], right)
  else
    [right[0]] + merge(left, right[1..right.length])
  end
end
