class LinkedList
    
    attr_accessor :size, :head, :tail
    
    def initialize(head = nil, tail = nil)
        @tail = Node.new(tail)
        @head = Node.new(head, @tail)
        @size = 2
    end

    def append(value)
        new_node = Node.new(value)
        @tail.pointer = new_node
        @tail = new_node
        @size += 1
    end

    def prepend(value)
        new_node = Node.new(value, @head)
        @head = new_node
        @size += 1
    end

    # 0 indexed
    def at(index)
        return @head if index == 0
        index.times.reduce(@head) {|node| node.pointer}
    end

    #pop removes the last element from the list
    def pop
        
        @size -= 1
    end

    #contains?(value) returns true if the passed in value is in the list and otherwise returns false.
    def contains?(value)
        
    end

    #find(value) returns the index of the node containing value, or nil if not found.
    def find(value)
        
    end

    #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    def to_s
        
    end
end


class Node
    
    attr_accessor :value, :pointer
    
    private

    def initialize(value = nil, pointer = nil)
        @value = value
        @pointer = pointer
    end
end

test = LinkedList.new("first_head", "first_tail")

test.append("new_tail")
test.prepend("new_head")

p test.at(0)
p test.at(1)
p test.at(2)
p test.at(3)
p test.at(4)