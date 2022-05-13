# Freitag, 13. Mai 2022
def square_array_in_place(int_array)
    int_array.each_with_index do |element, index|
        int_array[index] *= element
    end
end   

def square_array_out_of_place(int_array)
    squared_array = []

    int_array.each_with_index do |element, index|
        squared_array[index] = element ** 2
    end

    puts "out #{squared_array}"
end


arr = [2,3,4]
square_array_in_place(arr)
puts arr

arr2 = [2,3,4]
square_array_out_of_place(arr2)
puts arr2