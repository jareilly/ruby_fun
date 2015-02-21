require 'minitest/autorun'
require 'minitest/spec'

require 'singly_linked_list'

describe "test" do
  it "create empty list" do
  	list = LinkedList.new
    assert list.empty?
  end

  it "last test: fail until all tests written!!" do
    assert false
  end
end
