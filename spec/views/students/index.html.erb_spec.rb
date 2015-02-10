require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :nickname => "Nickname",
        :homeroom => "Homeroom",
        :is_boarding => false,
        :grade => "Grade",
        :email => "Email",
        :phone_number => "Phone Number",
        :health_details => "MyText"
      ),
      Student.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :nickname => "Nickname",
        :homeroom => "Homeroom",
        :is_boarding => false,
        :grade => "Grade",
        :email => "Email",
        :phone_number => "Phone Number",
        :health_details => "MyText"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "Homeroom".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
