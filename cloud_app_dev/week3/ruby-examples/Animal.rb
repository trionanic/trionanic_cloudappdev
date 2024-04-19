class Animal 

attr_accessor :name, :age

	def initialize(aName, aAge) 
		@name = aName
		@age = aAge
		
	end

	def breath 
	puts ( @name + " Inhale and Exhale")

	end

end


	
	