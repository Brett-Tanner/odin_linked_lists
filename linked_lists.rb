# TODO: could have just set default value as @head and called .method(node.pointer) recursively to move through the list. More readable than reduce.

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

    def at(index)
        return @head if index == 1
        # to make it not 0-indexed
        index -= 1
        index.times.reduce(@head) {|node| node.pointer}
    end

    def pop
        # because we want 2nd last
        @tail = self.at(@size - 1)
        @tail.pointer = nil
        @size -= 1
    end

    def contains?(value)
        size.times.reduce(@head) do |node|
            return true if node.value == value
            node.pointer
        end
        false
    end

    def find(value)
        index = 0
        size.times.reduce(@head) do |node|
            index += 1
            return index if node.value == value
            node.pointer
        end
        nil
    end

    def to_s
        string = ""
        size.times.reduce(@head) do |node|
            string << "( #{node.value} ) -> "
            node.pointer
        end
        string << "nil"
        puts "#{string}"
    end

    def insert_at(value, index)
        return self.prepend(value) if index == 1
        return self.append(value) if index == @size + 1
        preceding_node = self.at(index - 1)
        old_node = self.at(index)
        preceding_node.pointer = Node.new(value, old_node)
    end

    def remove_at(index)
        preceding_node = self.at(index - 1)
        @tail = preceding_node if index == @size
        next_node = self.at(index + 1)
        @head = next_node if index == 1
        preceding_node.pointer = next_node
        @size -= 1
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