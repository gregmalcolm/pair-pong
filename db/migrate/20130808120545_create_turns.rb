class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.integer :exercise_id
      t.integer :turn_type_id
      t.text :comment
      t.string :ending_sha,    limit: 40
      t.datetime :completed_at

      t.timestamps
    end

    add_index :turns, :exercise_id
    add_index :turns, :turn_type_id
    add_index :turns, :completed_at
  end
end
