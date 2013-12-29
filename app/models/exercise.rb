class Exercise < ActiveRecord::Base
  validates :github_id, presence: true
  validates :name, presence: true
end
