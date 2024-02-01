json.extract! student, :id, :lastname, :firstname, :address, :postal_code, :city, :email, :phone, :state, :created_at, :updated_at
json.url student_url(student, format: :json)
