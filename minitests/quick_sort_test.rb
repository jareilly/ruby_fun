require 'minitest/autorun'
require 'minitest/spec'

require 'quick_sort'

describe "basic quick_sort" do
  it "should return a sorted array" do
    sorted = [1, 2, 3, 4, 5]
    unsorted = sorted.shuffle
    quick_sort(unsorted).must_equal sorted
  end

  it "should return a sorted array with duplicate elements" do
    sorted = [1, 2, 2, 3, 3, 3, 4, 5]
    unsorted = sorted.shuffle
    quick_sort(unsorted).must_equal sorted
  end

  it "should sort strings too" do
    sorted = %w{ apple banana grapes kiwi pear}
    unsorted = sorted.shuffle
    quick_sort(unsorted).must_equal sorted
  end
end
