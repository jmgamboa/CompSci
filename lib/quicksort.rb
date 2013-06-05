class Qsort
    def quicksort(somearray)
       pivot = somearray.delete_at(rand(somearray.length))
       puts "#{pivot} number"
       i = 0
       # larger + pivot + smaller
       larger = []
       smaller = []
       while (i < somearray.length) do
            if pivot >= somearray[i]
                smaller << somearray[i]
               i += 1
            elsif pivot < somearray[i]
                larger << somearray[i]
                i += 1  
            end
        end    

        unless smaller.length == 0
            s = quicksort(smaller)
            puts "this is s: #{s}"
        else
            s = []
        end

        unless larger.length == 0
            l = quicksort(larger)
            puts "this is l: #{l}"
        else
            l = []
        end  
        return s + [pivot] + l
    end
end

puts Qsort.new.quicksort([2, 1, 5, 7, 8, 15]).join ',' 