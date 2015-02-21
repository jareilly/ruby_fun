# Quicksort is O(n**2)

def quick_sort(array)
  return [] if array.empty? || array.nil?

  # Quicksort: Pick an element, called a pivot, from the array.
  # Reorder the array so that all elements with values less than the pivot come before the pivot,
  # while all elements with values greater than the pivot come after it (equal values can go either way).
  # After this partitioning, the pivot is in its final position. This is called the partition operation.
  # Recursively apply the above steps to the sub-array of elements with smaller values and
  # separately to the sub-array of elements with greater values.

  pivot = array.shift
  quick_sort(array.select { |item| item <= pivot }) + [pivot] + quick_sort(array.select { |item| item > pivot })
end
