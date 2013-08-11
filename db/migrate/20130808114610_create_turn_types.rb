class CreateTurnTypes < ActiveRecord::Migration
  def change
    create_table :turn_types do |t|
      t.string :name
      t.string :description, limit: 4000

      t.timestamps
    end

    add_index :turn_types, :name
  end
end
