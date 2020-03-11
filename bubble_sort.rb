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
  loop do
    swapped = false
    (array.length - 1).times do |x|
      if yield(array[x], array[x + 1]).positive?
        array[x], array[x + 1] = array[x + 1], array[x]
        swapped = true
      end
    end
    break unless swapped
  end

  print array
end

bubble_sort_by(%w[Hi hey kiss bubble dance love]) do |left, right|
  left.length - right.length
end
