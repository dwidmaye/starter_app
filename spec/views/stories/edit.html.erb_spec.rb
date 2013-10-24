require 'spec_helper'

describe "stories/edit" do
  before(:each) do
    @story = assign(:story, stub_model(Story,
      :goal => "MyString",
      :stakeholder => "MyString",
      :behavior => "MyString",
      :business_value => 1,
      :complexity_value => 1,
      :tag => "MyString",
      :assignee => "MyString"
    ))
  end

  it "renders the edit story form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", story_path(@story), "post" do
      assert_select "input#story_goal[name=?]", "story[goal]"
      assert_select "input#story_stakeholder[name=?]", "story[stakeholder]"
      assert_select "input#story_behavior[name=?]", "story[behavior]"
      assert_select "input#story_business_value[name=?]", "story[business_value]"
      assert_select "input#story_complexity_value[name=?]", "story[complexity_value]"
      assert_select "input#story_tag[name=?]", "story[tag]"
      assert_select "input#story_assignee[name=?]", "story[assignee]"
    end
  end
end
