class Node
  attr_accessor :next_node
  attr_reader   :data

  def initialize(data)
    @data = data
  end

  def next_node
    @next_node  = nil
  end

end
