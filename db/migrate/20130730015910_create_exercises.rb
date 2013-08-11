class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :kata_link
      t.string :language
      t.string :repo
      t.integer :instigator_id
      t.datetime :completed_at

      t.timestamps
    end
  end
end
