class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :instructor
      t.integer :min_students
      t.integer :max_students
      t.integer :min_cmac_age
      t.integer :max_cmac_age
      t.string :min_grade
      t.string :max_grade
      t.decimal :cost
      t.text :description

      t.timestamps null: false
    end
  end
end
