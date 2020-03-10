def bubble_sort(arr)
    skip = 1
    arr.length.times do 
        pos = 0
        while pos < arr.length - skip do
            arr[pos], arr[pos + 1] = arr[pos + 1], arr[pos] if arr[pos] > arr[pos + 1]
            pos += 1
        end
        skip += 1
    end
    print arr
end

def bubble_sort_by(arr)
    skip = 1
    arr.length.times do 
        pos = 0
        while pos < arr.length - skip do
            arr[pos], arr[pos + 1] = arr[pos + 1], arr[pos] if arr[pos].length > arr[pos + 1].length
            pos += 1
        end
        skip += 1
    end
    print arr
end


bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end