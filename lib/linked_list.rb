require_relative './node'
require 'pry'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    return if !@head && !@tail || @head == @tail

    new_head = @tail
    new_tail = @head

    curr_node = @head

    while curr_node
      reverse_node curr_node
      curr_node = curr_node.prev_node
    end

    @head = new_head
    @tail = new_tail

    self
  end

  def reverse_node node
    new_next = node.prev_node
    new_prev = node.next_node

    node.next_node = new_next
    node.prev_node = new_prev

    node
  end
end

# l = LinkedList.new
# n1 = Node.new(1)
# n2 = Node.new(2)
# n3 = Node.new(3)
# l.head = n1
# n1.next_node = n2
# n2.prev_node = n1
# n2.next_node = n3
# n3.prev_node = n2
# l.tail = n3


