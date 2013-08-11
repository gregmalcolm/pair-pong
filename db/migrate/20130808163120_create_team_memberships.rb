class CreateTeamMemberships < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.integer :exercise_id
      t.integer :user_id
    end
  end
end
