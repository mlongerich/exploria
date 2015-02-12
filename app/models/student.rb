class Student < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :homeroom, presence: true
  validates :grade, presence: true
  validates :email, presence: true, email: true
end
