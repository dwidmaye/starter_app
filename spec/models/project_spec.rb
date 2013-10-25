require 'spec_helper'

describe Project do
  context "projects have unique names" do
    it "will not create duplicate project name" do
      FactoryGirl.create(:project, {name: 'project1'})
      expect{ FactoryGirl.create(:project, {name: 'project1'} ) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "will create unique project names" do
      FactoryGirl.create(:project)
      FactoryGirl.create(:project)
      Project.all.should be_present 
    end
  end

  context "project has stories" do
    it "will have zero stories" do
      p1 = FactoryGirl.create(:project)
      p1.stories.size.should be 0
    end

    it "will have one story" do
      p1 = FactoryGirl.create(:project)
      p1.stories = [FactoryGirl.create(:story)]
      p1.save.should be true
      p1.stories.size.should be 1
    end

    it "will have multiple stories" do
      p1 = FactoryGirl.create(:project)
      p1.stories = [FactoryGirl.create(:story), FactoryGirl.create(:story)]
      p1.save.should be true
      p1.stories.size.should be 2
    end
  end

end
