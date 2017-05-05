# Complete the method called split_array, which two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. See the driver code for examples.

def split_array(array, array_size)
   @many_arrays = []
   x = 1
   y = 0
   z = 6/array_size
   z.times do
        array_split_by_size = []
        @many_arrays << array[y..(x * array_size-1)]
        x +=1
        y += array_size
    end
    p @many_arrays
end


# Driver code - don't touch anything below this line.
puts "TESTING split_array..."
puts

result = split_array([0, 1, 2, 3, 4, 5], 2)

puts "Your method returned:"
p result
puts

if result == [[0, 1], [2, 3], [4, 5]]
  puts "PASS!"
else
  puts "F"
end

result = split_array([0, 1, 2, 3, 4, 5], 3)

puts "Your method returned:"
p result
puts

if result == [[0, 1, 2], [3, 4, 5]]
  puts "PASS!"
else
  puts "F"
end