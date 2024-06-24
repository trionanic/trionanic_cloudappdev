require 'arithmetic_calculator'
class CalculatorController < ApplicationController

	# this method is required to start the application where the
	# starting page is /calculate
	def calculate
	end
	
	def sum
	# the user data is sent via the params
	# the param names match the names in the sum form in the html.erb file
	# :number1 key contains the first number entered 
	# :number2 key contains the second number entered 
	# the numbers are entered as a text
	# retrieve the number submitted by the user
	# retrieve the operator submitted by the user 
	@num1 = params[:number1]
	@num2 = params[:number2]
	@operation = params[:operator]
	
	# we use class in arithmetic_calculator.rb to do the math
	# the ArithmeticCalculator holds the buiness rules/logic. It knows what each
	# operator means - so we send it the operator and the operands and it does the
	# calculation
	
	@answer = ArithmeticCalculator.doTheMath(@num1.to_i, @num2.to_i,@operation )
	
	# # Example of Disregarding Encapsulation - ignore the Model class and 
	# # do the calculation here!
	# case @operation 
		  # when "+"  then @answer = @num1.to_i + @num2.to_i;  
		  # when "-" then @answer = @num1.to_i - @num2.to_i;
		  # when "*" then @answer =   @num1.to_i * @num2.to_i;
		  # when "%" then @answer =  @num1.to_i % @num2.to_i;
				
		# end
	
	#controller prepares the result in the format that the view expects
	@result =  "#{@num1}  #{@operation} #{@num2}  = #{@answer}"
	
	end

end