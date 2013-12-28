class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :github_repository
      t.string :invite_message
      t.string :recipient
      t.integer :exercise_id

      t.timestamps
    end

    add_index :invitations, :exercise_id
  end
end
