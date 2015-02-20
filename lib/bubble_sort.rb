# following wikipedia pseudocode

def bubble_sort(array)
  length = array.length

  swapped = true
  until not swapped do
    swapped = false
    (length - 1).times do |ix|
      if array[ix] > array[ix + 1]
        array[ix], array[ix + 1] = array[ix + 1], array[ix]
        swapped = true
      end
    end
  end

  return array
end
