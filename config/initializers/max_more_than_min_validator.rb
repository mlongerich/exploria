class MaxMoreThanMinValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value) 
    if value < object.min_student
      object.errors[attribute] << "must be greater than or equal to min"
    end
  end
end
