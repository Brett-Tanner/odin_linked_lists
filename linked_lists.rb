class LinkedList
    
    attr_accessor :size, :head, :tail
    
    def initialize(head = nil, tail = nil)
        @tail = Node.new(tail)
        @head = Node.new(head, @tail)
        @size = 2
    end

    #append(value) adds a new node containing value to the end of the list
    def append(value)
        new_node = Node.new(value)
        @tail.pointer = new_node
        @tail = new_node
        @size += 1
    end

    #prepend(value) adds a new node containing value to the start of the list
    def prepend(value)
        
        @size += 1
    end

    #at(index) returns the node at the given index
    def at(index)
        
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

test = LinkedList.new("head", "first_tail")