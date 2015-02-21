require 'minitest/autorun'
require 'minitest/spec'

require 'singly_linked_list'

describe "test" do
  it "test: create empty list" do
  	list = LinkedList.new
    assert list.empty?
  end

  it "test: prepend to list" do
  	list = LinkedList.new
  	list.prepend 1
  	list.prepend 2
  	list.prepend 3
    assert !list.empty?
    assert list.length == 3
  end

  #it "last test: fail until all tests written!!" do
  #  assert false
  #end
end
