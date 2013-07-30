json.array!(@exercises) do |exercise|
  json.extract! exercise, :name, :kata_link, :language, :instigator_id, :turn_id, :completed_at
  json.url exercise_url(exercise, format: :json)
end
