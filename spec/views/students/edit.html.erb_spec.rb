require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :nickname => "MyString",
      :homeroom => "MyString",
      :is_boarding => false,
      :grade => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :health_details => "MyText"
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input#student_first_name[name=?]", "student[first_name]"

      assert_select "input#student_last_name[name=?]", "student[last_name]"

      assert_select "input#student_nickname[name=?]", "student[nickname]"

      assert_select "input#student_homeroom[name=?]", "student[homeroom]"

      assert_select "input#student_is_boarding[name=?]", "student[is_boarding]"

      assert_select "input#student_grade[name=?]", "student[grade]"

      assert_select "input#student_email[name=?]", "student[email]"

      assert_select "input#student_phone_number[name=?]", "student[phone_number]"

      assert_select "textarea#student_health_details[name=?]", "student[health_details]"
    end
  end
end
