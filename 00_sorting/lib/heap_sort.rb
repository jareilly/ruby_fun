# Heapsort is O(n log n)
# Following wikipedia psuedo-code

def heap_sort!(array)
  build_max_heap(array)

  last_item_index = array.length - 1
  (last_item_index).downto(1) do |i|
    array[0], array[i] = array[i], array[0]
    max_heapify(array, i, 0)
  end
  array
end

# level is the height within the binary tree represented by heap
def build_max_heap(array)
  ((array.length/2) - 1).downto(0) do |level|
    max_heapify(array, array.length, level)
  end
  array
end

# max_heap: parent nodes dominate child nodes by being larger than children
def max_heapify(array, length, i)
  left_index  = (2*i) + 1
  right_index = (2*i) + 2
  if left_index < length and array[left_index] > array[i]
    largest_index = left_index
  else
    largest_index = i
  end
  if right_index < length and array[right_index] > array[largest_index]
    largest_index = right_index
  end
  if (largest_index != i)
    array[i], array[largest_index] = array[largest_index], array[i]
    max_heapify(array, length, largest_index)
  end
end
