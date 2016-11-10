
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
  #// return newArr
#}

def merge_sort(array)
 
  return array if array.length == 1
  middle = array.length/2
  left_half = merge_sort(array[0..middle-1])
  right_half = merge_sort(array[middle..-1])

  merge(left_half, right_half)

end

def merge(array_1, array_2)
  # p array_1
  # p array_2
  combined_array = []

  while array_1.length > 0 && array_2.length > 0
    if array_1[0] >= array_2[0]
      smaller_value = array_2.shift
    else
      smaller_value = array_1.shift
    end  
    combined_array.push(smaller_value)
  end
end

p merge_sort([1,3,7,2,5])