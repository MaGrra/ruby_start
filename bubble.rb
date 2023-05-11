arr = [13, 4, 3, 78, 2, 0, 2]

def bubble_sort(arr)
  arr.each_with_index do |num, id|
    if arr[id + 1] != nil && num > arr[id + 1]
      arr[id], arr[id + 1] = arr[id + 1], arr[id]
      bubble_sort(arr)
    end
  end
end

p bubble_sort(arr)
