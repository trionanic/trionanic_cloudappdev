class Review < ApplicationRecord

   validates :details, presence: true
   validates :author, presence: true
  
end
