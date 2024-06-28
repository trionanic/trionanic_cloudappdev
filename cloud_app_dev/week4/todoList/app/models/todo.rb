class Todo < ApplicationRecord

   def complete 
   self.update(completed: true)
   
   end
     
end
