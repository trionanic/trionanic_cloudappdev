class Book < ApplicationRecord

validates :title, presence: true
validates :author, presence: true
validates :read, acceptance: true
validates :review, length: { in: 5..100 }
validates :year, numericality: { greater_than: 2000,
message: "Only recent titles, please!" }
validates :price, numericality: { greater_than: 10,
message: "Do not save cheap titles!" }

end
