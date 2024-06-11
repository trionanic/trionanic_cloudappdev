class Animal 

#two attributes name and age and their getters and setters 
attr_accessor :name, :age


	def initialize(aName, aAge) 
		@name = aName
		@age = aAge		
	end
 
	def breath 
	    puts ( @name + " Inhale and Exhale")
	end
	
	# def speak  
	# puts ( @name + "dinosuar noises ! ")
	# end
	
end


class Cat < Animal 
	def speak 
	  puts (@name + " Meow") 
	  end 
	  
	  def breath
	     puts ( @age.to_s + " Inhale and Exhale")
		 super
	  end 
end

class Dog < Animal 
	def speak 
	puts ( @name + " Woof")
	end
end


fluffy = Cat.new("Fluffy", 21);
fluffy.breath
fluffy.speak

rover = Dog.new("Rover", 13);
rover.breath
rover.speak

barney = Animal.new("Barney",100000);
barney.breath
# barney.speak

myPets = Array.new()
myPets.push (fluffy)
myPets.push(rover)
# myPets.push (barney)


myPets.push(99)
   
# here we see Polymorphism in action - we can invoke the speak and breath methods
# on each item in the array without knowing the class of the item
# 
for i in 0..myPets.length()-1
  puts ( "Iteration " + i.to_s )
  myPets[i].breath
  myPets[i].speak
  end

