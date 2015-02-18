require 'csv'
desc "Imports the students CSV file into an ActiveRecord table"
task :import_students, [:filename] => :environment do
  CSV.foreach('students.csv', :headers => true) do |row|
    Student.create!(row.to_hash)
  end
end
task :import_activities, [:filename] => :environment do
  CSV.foreach('activities.csv', :headers => true) do |row|
    Activity.create!(row.to_hash)
  end
end
