class Story < ActiveRecord::Base
  has_many :comments

  VALID_STATUSES = ['ice box', 'ready', 'started', 'done']
  VALID_ESTIMATES = (1..5).to_a

  validates :stakeholder, :goal, :behavior, :project, presence: true
  validates_length_of :tag, :maximum => 40

  belongs_to :project

end
