def bubble_sort!(array)
  loop do
    swaps = 0
    array.each_index do |idx|
      break if idx == (array.size - 1)
      if array[idx] > array[idx+1]
        array[idx], array[idx+1] = array[idx+1], array[idx]
        swaps += 1
      end
    end
    return array if swaps == 0
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)