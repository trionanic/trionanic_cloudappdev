class LightSwitchController < ApplicationController

     def switch
	    puts ("CALLED switch method in lightSwitchController. ") 
		puts ("PARAMS:" ) + params.inspect
		# variable 'status' is named in the html form
		@light_switch  = params[:status] == 'true'
		
	 end
end
