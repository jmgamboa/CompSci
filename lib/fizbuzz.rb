class Array
    def fizzbuzz(todo)
        todo.each do |number|
            if number%5 == 0
                if number%3 == 0
                    puts "fizzbuzz"
                else
                    puts "fizz"
                end
            elsif number%3 == 0
                puts "buzz"
            else
                puts number
            end
        end
    end
end

todo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
x = Array.new
x.fizzbuzz(todo)