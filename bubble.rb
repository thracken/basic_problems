
def bubble_sort(array)
  begin
    swapped = 0
    i = 0
    while i < array.length-1
      if array[i+1] < array[i]
        array[i],array[i+1] = array[i+1],array[i]
        swapped += 1
      end
      i += 1
    end
  end while swapped != 0

return array
end

puts "#{bubble_sort([4,3,78,2,0,19,2])}"
