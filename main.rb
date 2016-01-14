def binary_search(array:, search_for:)

    return false if array.length == 0

    lowest = 0
    highest = array.length - 1
    middle = (lowest + highest) / 2

    while array[middle] != search_for
        return false if highest < lowest

        if array[middle] > search_for
            highest = middle - 1
        else
            lowest = middle + 1
        end

        middle = (lowest + highest) / 2

    end

    return middle

end

puts "Input comma-separated numbers"
gets_array = gets.chomp.split(",").map {|x| x.to_i}

puts "Search for?"
gets_search_for = gets.chomp.to_i

p binary_search(array: gets_array, search_for: gets_search_for)
