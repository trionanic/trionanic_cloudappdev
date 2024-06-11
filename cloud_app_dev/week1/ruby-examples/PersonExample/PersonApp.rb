
#let Ruby know where to find the class we are going to use
require './Person'

# make a new instance of a Person. Name is Bob age is 99
P1 = Person.new("Bob",99)

puts P1.name
puts P1.age

P1.name = "Robert"
P1.age = 43

puts P1.name

