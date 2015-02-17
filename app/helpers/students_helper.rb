require 'date'

module StudentsHelper

  def age(dob, date)
    date.year - dob.year - ((date.month > dob.month || (date.month == dob.month && date.day >= dob.day)) ? 0 : 1)
  end

end
