
# Implements a method #bubble_sort that takes an array and returns a sorted 
# array. It must use the bubble sort methodology

def bubble_sort(array)
  length = array.length

  length.times do |count|
    array[...(length - count - 1)].each_index do |i|
      array[i], array[i + 1] = array[i + 1], array[i] if (array[i] > array[i + 1])
    end
  end

  array
end

puts bubble_sort([4,3,78,2,0,2])

