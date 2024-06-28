class Movie < ApplicationRecord

    has_many :reviews, :dependent => :destroy
	
	def delete_my_reviews
         self.reviews
	    
	end
	
	
end
