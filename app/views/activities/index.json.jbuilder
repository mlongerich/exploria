json.array!(@activities) do |activity|
  json.extract! activity, :id, :start_date, :end_date, :start_time, :end_time, :instructor, :min_students, :max_students, :cost
  json.url activity_url(activity, format: :json)
end
