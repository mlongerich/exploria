require 'rails_helper'

RSpec.describe "activities/index", type: :view do
  before(:each) do
    assign(:activities, [
      Activity.create!(
        :name => "Name",
        :instructor => "Instructor",
        :min_students => 1,
        :max_students => 2,
        :min_cmac_age => 3,
        :max_cmac_age => 4,
        :min_grade => "Min Grade",
        :max_grade => "Max Grade",
        :cost => "9.99",
        :description => "MyText"
      ),
      Activity.create!(
        :name => "Name",
        :instructor => "Instructor",
        :min_students => 1,
        :max_students => 2,
        :min_cmac_age => 3,
        :max_cmac_age => 4,
        :min_grade => "Min Grade",
        :max_grade => "Max Grade",
        :cost => "9.99",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of activities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Instructor".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Min Grade".to_s, :count => 2
    assert_select "tr>td", :text => "Max Grade".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
