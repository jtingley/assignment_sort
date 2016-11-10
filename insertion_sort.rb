
def insert(array, right_index = 0)
  return if right_index >= array.length - 1

  i = right_index

  value = array[i + 1]

  while i >= 0 && array[i] > value

    temp_smaller = array[i + 1]

    array[i + 1] = array[i]

    array[i] = temp_smaller

    i -= 1

  end

  insert(array, right_index + 1)

  array

end

def insertion_tests
  p insert([1,3,7,2,5])
  p insert([1,-3,-7,2,5])
  p insert([1,1,27,5,5])
  p insert([1,3,0,2,9])
end

#insertion_tests
