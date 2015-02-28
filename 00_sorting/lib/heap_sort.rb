# Heapsort is O(n log n)
# Following wikipedia psuedo-code

def heap_sort!(array)
  build_max_heap(array)

  last_item_index = array.length - 1
  (last_item_index).downto(1) do |i|
    array[0], array[i] = array[i], array[0]
    heapify(array, i, 0)
  end
  array
end

def build_max_heap(array)
  ((array.length/2) - 1).downto(0) do |i|
    heapify(array, array.length, i)
  end
  array
end

def heapify(array, length, i)
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
    heapify(array, length, largest_index)
  end
end
