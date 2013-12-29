class Invitation < ActiveRecord::Base
  belongs_to :exercise
  validates :recipient, presence: true
  validates :exercise_id, presence: true
end
