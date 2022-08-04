class LinkedList
    def initialize
        
    end

    #append(value) adds a new node containing value to the end of the list
    def append(value)
        
    end

    #prepend(value) adds a new node containing value to the start of the list
    def prepend(value)
        
    end

    #size returns the total number of nodes in the list
    def size
        
    end

    #head returns the first node in the list
    def head
        
    end

    #tail returns the last node in the list
    def tail
        
    end

    #at(index) returns the node at the given index
    def at(index)
        
    end

    #pop removes the last element from the list
    def pop
        
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
    
    attr_accessor :value
    
    def initialize
        @value = nil
        @pointer = nil
    end
end