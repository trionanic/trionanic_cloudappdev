require 'arithmetic_calculator'
class CalculatorController < ApplicationController

     protect_from_forgery unless: -> {request.format.json?}

	# this method is required to start the application where the
	# starting page is /calculate
	def calculate
	end
	
	def sum
	
	puts (" in the sum method" )
	
	@num1 = params[:number1]
	@num2 = params[:number2]
	@operation = params[:operator]
	
	@answer = ArithmeticCalculator.doTheMath(@num1.to_i, @num2.to_i,@operation )
	
	#controller prepares the result in the format that the view expects
	#@result =  "#{@num1}  #{@operation} #{@num2}  = #{@answer}"
	
	 if(@num1 && @num2)
      # we use the arithmetic_calculator.rb of the lib folder
      if((@num1.is_numeric?) && (@num2.is_numeric?))
        @result = ArithmeticCalculator.add(@num1.to_i, @num2.to_i)
        respond_to do |format|
          format.json { render json: {"result" => @result}.to_json, status: :ok}
          format.html {} 
        end
      else
        @notice = "You must supply numbers for both fields"
        respond_to do |format|
          format.json {render json: {"error" => @notice}.to_json, status: :bad_request}
          format.html {} 
        end
      end
	  end
	  end 
	  end

