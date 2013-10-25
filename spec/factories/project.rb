FactoryGirl.define do
  factory :project do
    sequence(:name) { |n| "project name#{n}"}
  end
end