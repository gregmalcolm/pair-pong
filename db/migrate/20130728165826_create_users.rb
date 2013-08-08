class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.boolean :active, default:true

      t.timestamps
    end

    add_index :users, :uid
    add_index :users, :name
    add_index :users, :active
  end
end
