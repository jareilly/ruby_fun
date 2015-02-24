# following wikipedia pseudocode
# bubblesort is O(n**2)

def bubble_sort(array)
  return [] if array.empty? || array.nil?

  length = array.length

  swapped = true
  until not swapped do
    swapped = false
    if length > 1
      (length - 1).times do |ix|
        if array[ix] > array[ix + 1]
          array[ix], array[ix + 1] = array[ix + 1], array[ix]
          swapped = true
        end
      end
    end
  end

  return array
end
