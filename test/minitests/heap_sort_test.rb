require 'minitest/autorun'
require 'minitest/spec'

require 'heap_sort'

describe "test" do
  it "sorts a simple array" do
    sorted = [1, 2, 3, 4, 5]
    unsorted = sorted.shuffle
    assert heap_sort(unsorted).must_equal sorted
  end

  it "sorts arrays with duplicate elements" do
    sorted = [1, 2, 2, 3, 3, 3, 4, 5]
    unsorted = sorted.shuffle
    assert heap_sort(unsorted).must_equal sorted
  end

  it "should sort string arrays too" do
    sorted = %w{ apple banana grapes kiwi pear}
    unsorted = sorted.shuffle
    assert heap_sort(unsorted).must_equal sorted
  end

  #it "should sort arbirtarily large arrays" do
    # create a large sorted array... this could be a static one...
    #minval = 0
    #maxval = 200000
    #size = maxval
    #sorted = (minval..maxval).shuffle[0..size-1].sort
#
    #unsorted = sorted.shuffle
    #heap_sort(unsorted).must_equal sorted
  #end
end
