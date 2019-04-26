require "./lib/linked_list"
list = LinkedList.new #<LinkedList head=nil #45678904567>
list.head #nil
list.append("doop")#"doop"
list#<LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
list.head#<Node data="doop" next_node=nil #5678904567890>
list.head.next_node#nil
list.append("deep")#"deep"
list.head.next_node#<Node data="deep" next_node=nil #5678904567890>
list.count#2
list.to_string#"doop deep"
