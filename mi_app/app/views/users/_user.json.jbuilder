json.extract! user, :id, :firstname, :last_name, :adress, :about_me, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
