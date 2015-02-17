class Student < ActiveRecord::Base

  validates :first_name, presence: true, length: {maximum: 20}
  validates :last_name, presence: true, length: {maximum: 20}
  validates :nickname, length: {maximum: 20}
  validates :homeroom, presence: true
  validates :grade, presence: true
  validates :email, presence: true, email: true, length: {maximum: 40}
  phony_normalize :phone_number, :default_country_code => 'TH'
  validates :phone_number, length: {maximum: 30}
  validates :health_details, length: {maximum: 1000} 

  def self.search(search)
    if search
      where('lower(first_name) LIKE lower(:search) OR 
             lower(last_name) LIKE lower(:search) OR 
             lower(nickname) LIKE lower(:search) OR 
             lower(homeroom) LIKE lower(:search) OR 
             lower(grade) LIKE lower(:search) OR
             lower(email) LIKE lower(:search) OR 
             lower(phone_number) LIKE lower(:search) OR 
             lower(health_details) LIKE lower(:search)', search: "%#{search}%")
    else
      all
    end
  end

  def self.boarder_filter(boarding_status)
    %w[true false].include?(boarding_status) ? where('is_boarding = :boarding_status', boarding_status: "#{boarding_status}" ) : all 
  end

end
