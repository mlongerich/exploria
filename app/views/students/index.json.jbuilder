json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :last_name, :nickname, :homeroom, :is_boarding, :grade, :birthdate, :email, :phone_number, :health_details
  json.url student_url(student, format: :json)
end
