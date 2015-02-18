require 'rails_helper'

RSpec.describe "activities/show", type: :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Instructor/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Min Grade/)
    expect(rendered).to match(/Max Grade/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
  end
end
