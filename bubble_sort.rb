def bubble_sort(array)
    flag = true
    array_counter = array.count - 1
    while flag 
        no_swap_counter = 0
        i = 0
        while i < array_counter
            if array[i] > array[i+1]
                temp = array[i]
                array[i] = array[i+1]
                array[i+1] = temp
                i = i+1
            else
                no_swap_counter = no_swap_counter + 1
                i = i +1
            end
        end
        if no_swap_counter == array_counter
            flag = false
        end
    end
    return array
end

print bubble_sort([4,3,78,2,0,2])