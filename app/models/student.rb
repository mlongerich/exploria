class Student < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :homeroom, presence: true
  validates :grade, presence: true
  validates :email, presence: true, email: true

  def self.search(search)
    if search
      where('first_name LIKE :search OR 
             last_name LIKE :search OR 
             nickname LIKE :search OR 
             homeroom LIKE :search OR 
             grade LIKE :search OR
             email LIKE :search OR 
             phone_number LIKE :search OR 
             health_details LIKE :search', search: "%#{search}%")
    else
      all
    end
  end
end
