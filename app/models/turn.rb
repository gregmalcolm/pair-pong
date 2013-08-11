class Turn < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :turn_type
end
