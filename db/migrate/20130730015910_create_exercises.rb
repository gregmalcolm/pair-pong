class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :kata_details, limit: nil
      t.integer :github_id

      t.timestamps
    end

    add_index :exercises, :github_id
  end
end
