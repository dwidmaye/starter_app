require 'spec_helper'

describe Story do

  context "create a story with attributes" do

    it "can be instantiated" do
      Story.new.should be_an_instance_of(Story)
    end

    it "will save a story with required attributes" do
      story = Story.new(:goal => "x", :stakeholder => "qwe", :behavior => "b")
      story.save.should be true
    end

    it "will not save a story without a stakeholder" do
      story = Story.create(:stakeholder => "")
      story.errors[:stakeholder].first.should match /can't be blank/
    end

    it "will not save a story without a goal" do
      story = Story.create(:goal => "")
      story.errors[:goal].first.should match /can't be blank/      
    end

    it "will not save a story without behavior" do
      story = Story.create(:behavior => "")
      story.errors[:behavior].first.should match /can't be blank/       
    end
  end

  context "update a story" do
    let(:story) do
      FactoryGirl.create(:story)
    end

    it "should not have a tag longer than 40 characters" do
      story.tag = 'a'*41
      story.should_not be_valid
    end
  end

  context "destroy a story" do
    it "should delete a story" do
      story = Story.create(goal: "mygoal", stakeholder: "stakeholder", behavior: "behavior")
      story.destroy
      Story.where(id: story.id).should_not be_present
    end
  end


end
