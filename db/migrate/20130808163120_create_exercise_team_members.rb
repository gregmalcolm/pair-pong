class CreateExerciseTeamMembers < ActiveRecord::Migration
  def change
    create_table :exercise_team_members do |t|
      t.integer :exercise_id
      t.integer :user_id
    end
  end
end
