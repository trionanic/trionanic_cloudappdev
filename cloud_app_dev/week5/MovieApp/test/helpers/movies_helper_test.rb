require "test_helper"

class MoviesHelperTest < ActionView::TestCase
  
   test "Should return correct number of stars" do
   
      test_data = [ 
		  [0,""],
		  [1,"*"],
		  [2,"**"],
		  [3,"***"],
		  [4,"****"],
		  [5,"*****"],
		  [6,""],
		  ["",""],
		  ["asd" , ""],
		  ["3","***"]
	  ]
	  
	  for i in test_data ;
	      assert_equal(i[1], render_stars(i[0]))
	  
	  end
	  
	  end
	  
  end
	  