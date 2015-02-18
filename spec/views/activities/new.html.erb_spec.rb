require 'rails_helper'

RSpec.describe "activities/new", type: :view do
  before(:each) do
    assign(:activity, Activity.new(
      :name => "MyString",
      :instructor => "MyString",
      :min_students => 1,
      :max_students => 1,
      :min_cmac_age => 1,
      :max_cmac_age => 1,
      :min_grade => "MyString",
      :max_grade => "MyString",
      :cost => "9.99",
      :description => "MyText"
    ))
  end

  it "renders new activity form" do
    render

    assert_select "form[action=?][method=?]", activities_path, "post" do

      assert_select "input#activity_name[name=?]", "activity[name]"

      assert_select "input#activity_instructor[name=?]", "activity[instructor]"

      assert_select "input#activity_min_students[name=?]", "activity[min_students]"

      assert_select "input#activity_max_students[name=?]", "activity[max_students]"

      assert_select "input#activity_min_cmac_age[name=?]", "activity[min_cmac_age]"

      assert_select "input#activity_max_cmac_age[name=?]", "activity[max_cmac_age]"

      assert_select "input#activity_min_grade[name=?]", "activity[min_grade]"

      assert_select "input#activity_max_grade[name=?]", "activity[max_grade]"

      assert_select "input#activity_cost[name=?]", "activity[cost]"

      assert_select "textarea#activity_description[name=?]", "activity[description]"
    end
  end
end
