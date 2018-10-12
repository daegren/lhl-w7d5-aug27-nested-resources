json.extract! dog, :id, :name, :colour, :date_of_birth, :owner_id, :created_at, :updated_at
json.url dog_url(dog, format: :json)
