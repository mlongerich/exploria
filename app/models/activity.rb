class Activity < ActiveRecord::Base

  validates :name, presence: true, length: {maximum: 80}, uniqueness: true
  validates :instructor, presence: true, length: {maximum: 60}
  validates :min_students, presence: true
  validates :max_students, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :description, presence: true, length: {maximum: 1000}

end
