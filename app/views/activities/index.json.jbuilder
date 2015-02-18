json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :instructor, :min_students, :max_students, :min_cmac_age, :max_cmac_age, :min_grade, :max_grade, :cost, :description
  json.url activity_url(activity, format: :json)
end
