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
    length == 0
  end

  def stringify
    string = String.new
    current = @head
    until current.nil?
      # manually cast value (e.g. fixnum) to string for proper stringify:ing
      string << current.value.to_s

      if current.next != nil
        string << "->"
      end
      current = current.next
    end   
    string
  end

  def contains?(value)
    current = @head
    until current.nil? 
      if current.value == value
        return true
      end
      current = current.next
    end   
    false
  end

  #
  # linked list operations
  #

  def append(value)
  end

  def prepend(value)
    node = Node.new
    node.value = value
    node.next = @head

    if @head.nil?
      @head = node
    else
      node.next = @head
      @head = node
    end
    @length = @length + 1
  end

  def insert(value, position)
  end

  def delete(value, position)
  end
end
