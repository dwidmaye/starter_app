class Story < ActiveRecord::Base
	validates :stakeholder, :goal, :behavior, presence: true
  validates_length_of :tag, :maximum => 40
end
