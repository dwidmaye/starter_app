class Comment < ActiveRecord::Base
  belongs_to :story	
  validates :story, presence: true
end
