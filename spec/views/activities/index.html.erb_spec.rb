require 'rails_helper'

RSpec.describe "activities/index", type: :view do
  before(:each) do
    assign(:activities, [
      Activity.create!(
        :instructor => "Instructor",
        :min_students => 1,
        :max_students => 2,
        :cost => "9.99"
      ),
      Activity.create!(
        :instructor => "Instructor",
        :min_students => 1,
        :max_students => 2,
        :cost => "9.99"
      )
    ])
  end

  it "renders a list of activities" do
    render
    assert_select "tr>td", :text => "Instructor".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
