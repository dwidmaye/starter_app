require 'spec_helper'

describe "stories/index" do
  before(:each) do
    assign(:stories, [
      stub_model(Story,
        :goal => "Goal",
        :stakeholder => "Stakeholder",
        :behavior => "Behavior",
        :business_value => 1,
        :complexity_value => 2,
        :tag => "Tag",
        :assignee => "Assignee"
      ),
      stub_model(Story,
        :goal => "Goal",
        :stakeholder => "Stakeholder",
        :behavior => "Behavior",
        :business_value => 1,
        :complexity_value => 2,
        :tag => "Tag",
        :assignee => "Assignee"
      )
    ])
  end

  it "renders a list of stories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Goal".to_s, :count => 2
    assert_select "tr>td", :text => "Stakeholder".to_s, :count => 2
    assert_select "tr>td", :text => "Behavior".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
    assert_select "tr>td", :text => "Assignee".to_s, :count => 2
  end
end
