class FixUserColumns < ActiveRecord::Migration
  def change
    add_column :users, :happiness, :integer
    add_column :users, :nausea, :integer
    remove_column :users, :mood
  end
end
