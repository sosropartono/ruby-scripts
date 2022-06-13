
# Stock picker function
def stock_picker(arr) 
    arr_min = arr[0]
    buy_sell_arr = []
    profit = 0
    min_index = 0
    arr.each_with_index do
        |element, index|
        if element < arr_min
            arr_min = element
            min_index = index
            next
        end
        if element - arr_min > profit
            profit = element - arr_min
            buy_sell_arr = [min_index, index]
        end
    end
    puts "The profit of day #{buy_sell_arr[0]} and day #{buy_sell_arr[1]} is: #{profit}"
    buy_sell_arr

end


print stock_picker([17,3,6,9,15,8,6,1,10])