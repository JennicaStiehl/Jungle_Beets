require './lib/node'

class LinkedList
  attr_reader     :head
  attr_accessor :next_node
  attr_accessor :string

  def initialize
    @head = nil
    @next_node = nil
  end

  def empty?
    head.nil?
  end

  def concat(list_string, node)
    "#{list_string}, #{node.data}"
  end

  def stringify_node(node, list_string, terminal=nil, counter=1)
    return concat(list_string, node) if node.tail? || terminal == counter
    stringify_node(node.next_node, concat(list_string, node), terminal, counter += 1)
  end

  def list_head(node = head)
    "#{head.data}"
  end

  def to_string
    return "" if empty?
    return list_head if head.tail?
    stringify_node(head.next_node, list_head)
  end

  def count_node(node, counter)
    return counter if node.tail?
    count_node(node.next_node, counter += 1)
  end

  def count
    return 0 if empty?
    count_node(head, 1)
  end

  def append(data)
    if @head
      find_tail.next_node = Node.new(data)
    else
      @head = Node.new(data)
    end
  end

  def prepend(data)
    node = Node.new(data)
    node.next_node = self.head
    @head = node
  end

  def find_tail
    node = @head
    return node if !node.next_node
    return node if !node.next_node while (node = node.next_node)
  end

def find(start, count)
  found_node = node_at(head, start)
  list_string = list_head(found_node)
  return list_string if count == 1
  stringify_node(found_node.next_node, list_string, count -= 1)
end

  def node_at(node, position, counter=0)
    return node if position == counter
    node_at(node.next_node, position, counter += 1)
  end

  def insert(position, data)
    node = Node.new(data)
    prior_node = node_at(head, position - 1)
    next_node = node_at(head, position)
    prior_node.next_node = node
    node.next_node = next_node
    return node
  end

  def pop
    new_tail = node_at(head, count - 2)
    old_tail = new_tail.next_node
    new_tail.next_node = nil
    old_tail
  end

  def find_by_data(node, data)
    return true if node.data == data
    return false if node.tail?
    find_by_data(node.next_node, data)
  end

  def includes?(data)
    find_by_data(head, data)
  end

end
