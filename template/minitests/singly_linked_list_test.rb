require 'minitest/autorun'
require 'minitest/spec'

require 'singly_linked_list'

describe "test" do
  it "creates a new empty list" do
  	list = LinkedList.new
    assert list.empty?
  end

  it "prepends to a list successfully" do
  	list = LinkedList.new
  	list.prepend 1
  	list.prepend 2
  	list.prepend 3
    assert !list.empty?
    assert list.length == 3
    assert list.contains? 1
    assert list.contains? 1
    assert list.contains? 1
  end

  it "appends to a list successfully" do
    list = LinkedList.new
    list.append 1
    list.append 2
    list.append 3
    list.length == 2
    assert !list.empty?
  end

  #it "last test: fail until all tests written!!" do
  #  assert false
  #end
end
