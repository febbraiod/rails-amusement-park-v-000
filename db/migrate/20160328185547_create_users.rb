class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :tickets
      t.string :mood
      t.integer :height

      t.timestamps null: false
    end
  end
end
