=begin
1. Traversing a linked list.
2. Appending a new node (to the end) of the list
3. Prepending a new node (to the beginning) of the list
4. Inserting a new node to a specific position on the list
5. Deleting a node from the list
6. Updating the data of a linked list node
=end

class LinkedList

  class Node
    attr_accessor :value, :next
  end

  def initialize
    @node = nil
  end

  def empty?
    return @node == nil
  end

  def append(value)
  end

  def prepend(value)
    nd = Node.new
    nd.value = value
    nd.next = @node
    @node = nd
  end

  def insert(value, position)
  end

  def delete(value, position)
  end

end
