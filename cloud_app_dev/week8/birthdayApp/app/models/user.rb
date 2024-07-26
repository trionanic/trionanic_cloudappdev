class User < ApplicationRecord

validates :last_name,presence: true 
validates :birthday, presence: true 
validates :birthday , comparison: { less_than_or_equal_to: Date.today } 

validate :birthday_in_last_100_years
  
  private 
  
  def birthday_in_last_100_years
     return if birthday.blank?
	 
     max_date = Date.today
     min_date = max_date - 100.years
     
     unless birthday.between?(min_date, max_date) 
	    errors.add(:birthday, "must be between #{min_date} and #{max_date}")
	 end
   end 

end
