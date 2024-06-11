require 'hello'

class HelloController < ApplicationController

	  def hello
	  puts "CALLED hello method in the HelloController"
	  @result = "This is the result"
	  end
	  
	  def say_hello
	   puts "CALLED say_hello method in the HelloController"
	   puts ( params.inspect) 
	   @name = params[:input_name]
	   puts "The input name is " + @name.to_s
	   @result = Hello.say_hello(@name)
	   end
	  
  end
