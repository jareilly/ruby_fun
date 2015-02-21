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
    @tail = nil
    @length = 0
  end

  def empty?
    length == 0
  end

  # stringify from head to tail
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

  # add value to end of list
  def append(value)
    node = Node.new
    node.value = value

    if @head.nil? && @tail.nil?
      @head = node
      @tail = node
    else
      @tail.next = node
      @tail = node
    end
    @length = @length + 1
  end

  # add value to start of list
  def prepend(value)
    node = Node.new
    node.value = value
    node.next = @head

    if @head.nil? && @tail.nil?
      @head = node
      @tail = node
    else
      @head = node
    end
    @length = @length + 1
  end

  def insert_before(index, value)
    raise RangeError, 'index out of range' unless (index >= 0 && index < length)

    n = 0
    current = @head
    previous = nil
    until n == index
      previous = current
      current = current.next
      n = n + 1
    end

    node = Node.new
    node.value = value
    node.next = current

    if previous == nil
      @head = node
    else
      previous.next = node
    end
    @length = @length + 1
  end

  def insert_after(index, value)
    if (index == @length-1)
      append(value)
    else
      insert_before(index+1, value)
    end
  end

  def delete(value, position)
  end
end
