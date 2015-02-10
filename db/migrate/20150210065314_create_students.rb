class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :homeroom
      t.boolean :is_boarding
      t.string :grade
      t.date :birthdate
      t.string :email
      t.string :phone_number
      t.text :health_details

      t.timestamps null: false
    end
  end
end
