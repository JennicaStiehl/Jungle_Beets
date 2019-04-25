require './lib/node'

class LinkedList
  attr_reader :head,
                    :next_node,
                    :count,
                    :string

  def initialize
    @head = nil
    @next_node = nil
    @count = 0
    @string = ''
  end

  def append(data)
    if @head
      find_tail.next_node = Node.new(data)
    else
      @head = Node.new(data)
    end
    @count +=1
    @string << data
  end

  def find_tail
    node = @head
    return node if !node.next_node
    return node if !node.next_node while (node = node.next_node)
  end

end
