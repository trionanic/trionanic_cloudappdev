require './Animal'
require './Cat'
require './Dog'


fluffy = Cat.new("Fluffy", 21);
#fluffy.breath
#fluffy.speak

rover = Dog.new("Rover", 13);
#rover.breath
#rover.speak

myPets = Array.new()
myPets.push (fluffy)
myPets.push(rover)

for i in 0..myPets.length()-1
  myPets[i].speak
  end