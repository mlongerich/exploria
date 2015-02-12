require 'rails_helper'

RSpec.describe "activities/new", type: :view do
  before(:each) do
    assign(:activity, Activity.new(
      :instructor => "MyString",
      :min_students => 1,
      :max_students => 1,
      :cost => "9.99"
    ))
  end

  it "renders new activity form" do
    render

    assert_select "form[action=?][method=?]", activities_path, "post" do

      assert_select "input#activity_instructor[name=?]", "activity[instructor]"

      assert_select "input#activity_min_students[name=?]", "activity[min_students]"

      assert_select "input#activity_max_students[name=?]", "activity[max_students]"

      assert_select "input#activity_cost[name=?]", "activity[cost]"
    end
  end
end
