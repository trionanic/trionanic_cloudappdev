class ArithmeticCalculator 

	def self.add(n1, n2) 
	result = n1 + n2
	end

	def self.subtract(n1, n2) 
	result = n1 - n2
	end

	def self.multiply(n1, n2) 
	result = n1 * n2
	end 

	def self.divide(n1, n2) 
	result = n1 / n2
	end 
	
	def self.doTheMath (n1, n2, operator) 
	
		case operator 
		  when "+"  then @result = self.add(n1,n2);  
		  when "-" then @result = self.subtract(n1,n2); 
		  when "*" then @result = self.multiply(n1,n2);  
		  when "%" then @result = self.divide(n1,n2); 
				
		end
	end

end
