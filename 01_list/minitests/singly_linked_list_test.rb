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
    assert list.contains? 1
    assert list.contains? 2
    assert list.contains? 3
    assert list.stringify.eql?("3->2->1"), "DEBUG list:" + list.stringify
  end

  it "test: append to list" do
    list = LinkedList.new
    list.append 1
    list.append 2
    list.append 3
    list.append 3
    assert !list.empty?
    assert list.length == 4
    assert list.contains? 1
    assert list.contains? 2
    assert list.contains? 3
    assert list.stringify.eql?("1->2->3->3"), "DEBUG list:" + list.stringify
  end

  #it "last test: fail until all tests written!!" do
  #  assert false
  #end
end
