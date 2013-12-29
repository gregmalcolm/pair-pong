class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :github_repository
      t.text :invite_message, limit: nil
      t.string :recipient
      t.integer :exercise_id

      t.timestamps
    end

    add_index :invitations, :exercise_id
  end
end
