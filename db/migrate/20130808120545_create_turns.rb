class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.integer :exercise_id
      t.integer :turn_name_id
      t.string :comment,       limit: 1000
      t.string :ending_sha,    limit: 40
      t.datetime :completed_at

      t.timestamps
    end

    add_index :turns, :exercise_id
    add_index :turns, :turn_name_id
    add_index :turns, :completed_at
  end
end
