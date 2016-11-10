
def bubble_sort(array)
  swap = true
  number_of_cycles = 0

  while swap
    swap = false
    number_of_cycles += 1

    0.upto(array.length - 2 - number_of_cycles) do |index|

      left_value = array[index]
      right_value = array[index + 1]

      if left_value > right_value
        swap = true
        array[index + 1] = left_value
        array[index] = right_value
      end
    end
  end

  array
end

def bubble_tests
  p bubble_sort([1,3,7,2,5])
  p bubble_sort([1,-3,-7,2,5])
  p bubble_sort([1,1,27,5,5])
  p bubble_sort([1,3,0,2,9])
end

bubble_tests
