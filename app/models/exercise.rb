class Exercise < ActiveRecord::Base
  validate :name, presence: true
end
