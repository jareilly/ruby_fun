=begin
1. Traversing a linked list.
2. Appending a new node (to the end) of the list
3. Prepending a new node (to the beginning) of the list
4. Inserting a new node to a specific position on the list
5. Deleting a node from the list
6. Updating the data of a linked list node
=end

class LinkedList
  attr_reader :length

  class Node
    attr_accessor :value, :next
  end


  def initialize
    @head = nil
    @length = 0
  end

  def empty?
    return @head == nil
  end


  def append(value)
  end

  def prepend(value)
    node = Node.new
    node.value = value
    node.next = @head
    @head = node
    @length = @length + 1
  end

  def insert(value, position)
  end

  def delete(value, position)
  end


end
