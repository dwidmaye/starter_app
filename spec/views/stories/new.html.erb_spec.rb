require 'spec_helper'

describe "stories/new" do
  before(:each) do
    assign(:story, stub_model(Story,
      :goal => "MyString",
      :stakeholder => "MyString",
      :behavior => "MyString",
      :business_value => 1,
      :complexity_value => 1,
      :tag => "MyString",
      :assignee => "MyString",
      :status => "ice box"
    ).as_new_record)
  end

  it "renders new story form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stories_path, "post" do
      assert_select "input#story_goal[name=?]", "story[goal]"
      assert_select "input#story_stakeholder[name=?]", "story[stakeholder]"
      assert_select "input#story_behavior[name=?]", "story[behavior]"
      assert_select "select#story_business_value[name=?]", "story[business_value]"
      assert_select "select#story_complexity_value[name=?]", "story[complexity_value]"
      assert_select "input#story_tag[name=?]", "story[tag]"
      assert_select "input#story_assignee[name=?]", "story[assignee]"
      assert_select "select#story_status[name=?]", "story[status]"
    end
  end
end
