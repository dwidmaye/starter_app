require 'spec_helper'

describe "stories/show" do
  before(:each) do
    @story = assign(:story, stub_model(Story,
      :goal => "Goal",
      :stakeholder => "Stakeholder",
      :behavior => "Behavior",
      :business_value => 1,
      :complexity_value => 2,
      :tag => "Tag",
      :assignee => "Assignee"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Goal/)
    rendered.should match(/Stakeholder/)
    rendered.should match(/Behavior/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Tag/)
    rendered.should match(/Assignee/)
  end
end
