class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def double(list)
   list_b = list.next_node
   while list
    list = list.next_node
    list_b = list_b.next_node.next_node
    puts list_b.value
    
    puts list.value
    puts '---'
    if list != list_b
      puts false
    else 
      puts true
      break
    end
    
  end
end



node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(68, node3)
node1.next_node = node4

puts double(node4)