class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :kata_link, :language, :instigator_id, :turn_id, :completed_at
end
