class Story < ActiveRecord::Base
	validates :stakeholder, :goal, :behavior, presence: true
end
