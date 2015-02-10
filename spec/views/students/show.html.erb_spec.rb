require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :nickname => "Nickname",
      :homeroom => "Homeroom",
      :is_boarding => false,
      :grade => "Grade",
      :email => "Email",
      :phone_number => "Phone Number",
      :health_details => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/Homeroom/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Grade/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/MyText/)
  end
end
