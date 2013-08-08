class CreateTurnNames < ActiveRecord::Migration
  def change
    create_table :turn_names do |t|
      t.string :name
      t.string :description, limit: 4000
    end
  end
end
