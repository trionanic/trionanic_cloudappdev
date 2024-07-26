class Movie < ApplicationRecord

    has_many :reviews, :dependent => :destroy
	validates :rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
    validates :release, presence: true, numericality: { greater_than_or_equal_to: 1900}                                            													 
	
	def delete_my_reviews

         self.reviews.destroy_all
	    
	end
	
	
end
