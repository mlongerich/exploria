require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do
  CSV.foreach('document.csv', :headers => true) do |row|
    Student.create!(row.to_hash)
  end
end
