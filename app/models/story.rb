class Story < ActiveRecord::Base
  has_many :comments

  VALID_STATUSES = ['ice box', 'ready', 'started', 'done']
  VALID_ESTIMATES = (1..5).to_a

  validates :stakeholder, :goal, :behavior, presence: true
  validates_length_of :tag, :maximum => 40
  
  scope :bv_ascending, -> { order("business_value ASC")}
  scope :bv_descending, -> { order("business_value DESC")}
end
