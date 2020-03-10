module Enumerable
    def my_each
        i = 0
        while i < self.size
            yield(self[i])
            i += 1
        end
        self
    end

    def my_each_with_index
        i = 0
        while i < self.size
            yield(self[i], i)
            i += 1
        end
        self
    end

    def my_select
        selected = []
        my_each {|item| selected << item if yield(item)}
        selected
    end

    def my_all?(&block)
        allHere = false
        count = 0
        my_each {|item| count += 1 if yield(item)}
        allHere = true if count == self.size
        allHere
    end

    def my_none?(&block)
        noneHere = true
        count = 0
        my_each {|item| count += 1 if yield(item)}
        noneHere = false if count > 0
        noneHere
    end

    def my_count
        count = 0
        my_each {|item| count += 1 if yield(item)}
        count
    end

    def my_map
        mapped = []
        my_each {|item| mapped << yield(item)}
        mapped
    end

    def my_inject(start)
        prev = start
        my_each {|curr| prev = yield(prev, curr)}
        prev
    end

end

def multiply_els(array)
    array.my_inject(1) { |result, element| result * element }
end

a = [13,5,24,33,6]
b = [1,2,3,4,5]
a.my_each do |num, index|
    print  "#{num} "
end

puts ""

a.my_each_with_index do |num, index|
    puts "#{num} is at #{index}"
end

puts ""

a.my_select { |x| puts x if x.even? }

puts ""

puts a.my_all? { |x| x > 0 }

puts ""

puts a.my_none? { |x| x > 1500 }

puts ""

puts a.my_count { |x| x > 6 }

puts ""

puts a.my_map { |x| x * 6 }

puts ""

puts a.my_inject(0) { |result, element| result + element }

puts multiply_els([2,4,5])