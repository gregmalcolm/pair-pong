class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :github_repository
      t.text :invite_message, limit: nil
      t.integer :user_id
      t.string :recipient
      t.integer :exercise_id
      t.string :confirm_code

      t.timestamps
    end

    add_index :invitations, :exercise_id
    add_index :invitations, :user_id
  end
end
