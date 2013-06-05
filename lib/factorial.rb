 def factorial(i)
  i *= if i > 1
     factorial(i-1)
 else
   1
    end
end

puts factorial(25)
