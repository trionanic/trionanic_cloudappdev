#Arrays in Ruby

fruits = ["banana", "apple", "orange", "strawberry", "raspberry", "rhubarb", "cherry", "grape", "kiwi", "lemon" ]

puts(fruits) # print the array named arr


puts "Size of array is: #{fruits.size}"
puts "Length of array is: #{fruits.length}"

fruits.push("Tangerine") #.push indicating a new entry into the array

puts (fruits) 

puts "Size of array is: #{fruits.size}"
puts "Length of array is: #{fruits.length}"

fruits.delete_at(5) 

puts (fruits) 

puts "Size of array is: #{fruits.size}"
puts "Length of array is: #{fruits.length}"

for i in 0..fruits.size-1 

   puts "I like #{fruits[i]}"

end 
