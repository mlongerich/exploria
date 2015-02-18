class Activity < ActiveRecord::Base

  validates :name, presence: true, length: {maximum: 80}, uniqueness: true
  validates :instructor, presence: true, length: {maximum: 60}
  validates :min_students, presence: true
  validates :max_students, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :description, presence: true, length: {maximum: 1000}

  def self.search_activity(search)
    if search
      where('lower(name) LIKE lower(:search) OR
             lower(instructor) LIKE lower(:search) OR
             lower(min_grade) LIKE lower(:search) OR
             lower(max_grade) LIKE lower(:search) OR
             lower(description) LIKE lower(:search)', search: "%#{search}%")
             
    else
      all
    end
  end
end
