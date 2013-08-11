class Exercise < ActiveRecord::Base
  validate :name, presence: true

  belongs_to :instigator, class_name: 'User'
  has_many :turns
  has_many :team_memberships
end
