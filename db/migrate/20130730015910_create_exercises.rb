class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :kata_link
      t.integer :github_id

      t.timestamps
    end

    add_index :exercises, :github_id
  end
end
