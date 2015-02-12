class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :instructor
      t.integer :min_students
      t.integer :max_students
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
