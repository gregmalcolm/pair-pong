class CreateTurnNames < ActiveRecord::Migration
  def change
    create_table :turn_names do |t|
      t.string :name
      t.string :description, limit: 4000

      t.timestamps
    end

    add_index :turn_names, :name
  end
end
