json.extract! book, :id, :title, :author, :review, :read, :year, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
