class Array
    def insertion_sort(somearray)
        i = 0
        while( i < somearray.length+1)
            puts somearray(i)
        end
    end

    def find_max(somearray)
        max = 0
        somearray.each do |number|
            if number > max 
                max = number
            end
        end
        print max 
    end
end


