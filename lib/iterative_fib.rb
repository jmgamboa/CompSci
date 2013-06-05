class Iterative
    def fib_iterative(index)
        array = [0, 1]
        last_num = 1

        while array.length < index
            array.push(last_num)
            last_num = array[-1] + array[-2]
        end
        return array.push(index)
    end
end