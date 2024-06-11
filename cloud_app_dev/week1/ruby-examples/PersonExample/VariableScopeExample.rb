class ExampleClass

  # static variable - scope is for the current class. Every intance of this class shares the same variable
  @@count = 0;
  

     def initialize (name)
	     @name = name
		 @@count = @@count + 1
	 end
	 
	 def get_name 
	    return @name
	end
	
	def ExampleClass.count
	 return @@count
	end
	
	def printAll 
	   puts @name
	   puts $name
	end 
	
	   
end

#local variable 
name = "LocalVariableName"

#global variable
$name = "GlobalVariableName"

AEC = ExampleClass.new ("InstanceName1")
puts  AEC.get_name
puts  ExampleClass.count

AEC2 = ExampleClass.new("InstanceName2")
puts AEC2.get_name

#the class variable ( static variable ) is shared across all instances so it has been incremented twice
puts  ExampleClass.count

#the printAll method in ExampleClass can access the global variable $name
AEC.printAll



