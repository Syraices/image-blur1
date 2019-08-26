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
   
    puts list_b.value
    
    puts list.value
    puts '---'
    # if list != list_b
    #   puts 'no loop found'
    # else 
    if list == list_b
      puts 'loop found'
      break
    end
    list = list.next_node
    if list_b.next_node
      list_b = list_b.next_node.next_node
    else
      puts 'no loop found'
      break 
    end
  end
end



node1 = LinkedListNode.new(8)
node2 = LinkedListNode.new(7, node1)
node3 = LinkedListNode.new(6, node2)
node4 = LinkedListNode.new(5, node3)
node5 = LinkedListNode.new(4, node4)
node6 = LinkedListNode.new(3, node5)
node7 = LinkedListNode.new(2, node6)
node8 = LinkedListNode.new(1, node7)
node1.next_node = node6

puts double(node8)