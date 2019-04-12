def bubble_sort(arr)
  i = arr.length - 2
  while i > 0 do 
    for n in (0..i)
      if arr[n] > arr[n+1]
        temp = arr[n]
        arr[n] = arr[n+1]
        arr[n+1] = temp
      end
    end
    i -= 1
  end
  arr
end

def bubble_sort_by(arr)
  i = arr.length - 2
  while i > 0 do 
    for n in (0..i)
      if yield(arr[n],arr[n+1]) > 0
        temp = arr[n]
        arr[n] = arr[n+1]
        arr[n+1] = temp
      end
    end
    i -= 1
  end
  arr
end