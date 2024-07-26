module MoviesHelper

def render_stars(stars)
     output = ""
	 if(1..5).cover?(stars.to_i) 
		  for i in 0...stars.to_i
		   output += "*"
		  end
	  end
	  return output
   end   
   
end
