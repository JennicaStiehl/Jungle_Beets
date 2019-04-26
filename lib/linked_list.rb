require './lib/node'

class LinkedList
  attr_reader :head,
                    :next_node,
                    :count,
                    :to_string

  def initialize
    @head = nil
    @next_node = nil
    @count = 0
    @to_string = ''
  end

  def append(data)
    if @head
      find_tail.next_node = Node.new(data)
    else
      @head = Node.new(data)
    end
    @count +=1
    @to_string << (data + ' ')
  end

  def prepend(data)
    node = Node.new(data)
    node.next_node = head
    head = node
    @count +=1
    @to_string << (data + ' ')
  end

  def find_tail
    node = @head
    return node if !node.next_node
    return node if !node.next_node while (node = node.next_node)
  end

  def find(value)
    binding.pry
    node = @head
    return false if !node.next_node
    return node  if node.value == value
    while (node = node.next_node)
      return node if node.value == value
    end
  end


end
