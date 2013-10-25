FactoryGirl.define do
  factory :story do
    goal 'has goal'
    behavior 'has behavior'
    stakeholder 'user'
    project { FactoryGirl.create :project }
  end
end