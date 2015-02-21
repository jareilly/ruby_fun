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

  it "test: insert" do
    list = LinkedList.new
    list.append 2
    list.append 3

    begin
      list.insert_before(22, 1)
    rescue RangeError
    end
    begin
      list.insert_before(-1, 1)
    rescue RangeError
    end

    ix = 0
    list.insert_before(ix, 1)
    assert list.length == 3, "DEBUG list length is 3"
    assert list.contains?(1), "DEBUG contains 1 " + list.stringify
    assert list.contains?(2), "DEBUG contains 2"
    assert list.contains?(3), "DEBUG contains 3"
    assert list.stringify.eql?("1->2->3"), "DEBUG list:" + list.stringify

    ix = 1
    list.insert_before(ix, 4)
    assert list.length == 4, "DEBUG list length is 4"
    assert list.contains?(4), "DEBUG contains 1 " + list.stringify
    assert list.stringify.eql?("1->4->2->3"), "DEBUG list:" + list.stringify

    ix = 3
    list.insert_before(ix, 5)
    assert list.length == 5, "DEBUG list length is 5"
    assert list.contains?(5), "DEBUG contains 1 " + list.stringify
    assert list.stringify.eql?("1->4->2->5->3"), "DEBUG list:" + list.stringify

    ix = 0
    list.insert_after(ix, 6)
    assert list.length == 6, "DEBUG list length is 6"
    assert list.contains?(6), "DEBUG contains 1 " + list.stringify
    assert list.stringify.eql?("1->6->4->2->5->3"), "DEBUG list:" + list.stringify

    ix = 5
    list.insert_after(ix, 7)
    assert list.length == 7, "DEBUG list length is 6"
    assert list.contains?(7), "DEBUG contains 1 " + list.stringify
    assert list.stringify.eql?("1->6->4->2->5->3->7"), "DEBUG list:" + list.stringify

  end

  #it "last test: fail until all tests written!!" do
  #  assert false
  #end
end
