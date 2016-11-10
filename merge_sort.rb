
#function mergeSort(array) {
  #// if the array is one element long, just return it
  #// mergeSort() the left half of the array
  #// mergeSort() the right half of the array
  #// merge() the two halves
  #// return the merged array
#}

#function merge(leftArr, rightArr){
  #// var newArr = [];
  #// compare leftArr[0] and rightArr[0]
  #// whichever is smaller, push it onto newArr
  #// repeat the process, but don't reuse elements,
  #// until you have pushed all the elements from
  #// leftArr and rightArr onto newArr in sorted order
  #// return newArr #} def merge_sort(array)

def merge_sort(array)
  return array if array.length <= 1

  r = l = array.length / 2
  array.length.even? ? l -= 1 : r += 1

  left_half = merge_sort(array[0..l])
  right_half = merge_sort(array[r..array.length])

  merge(left_half, right_half)
end

def merge(array_1, array_2)
  combined_array = []
  until array_1.empty? || array_2.empty?
    if array_1[0] >= array_2[0]
      smaller_value = array_2.shift
    else
      smaller_value = array_1.shift
    end
    combined_array.push(smaller_value)
  end
  trailing_values = array_1.empty? ? array_2 : array_1
  combined_array << trailing_values
  combined_array.flatten
end

def merge_tests
  p merge_sort([1,3,7,2,5])
  p merge_sort([1,-3,-7,2,5])
  p merge_sort([1,1,27,5,5])
  p merge_sort([1,3,0,2,9])
end

merge_tests
