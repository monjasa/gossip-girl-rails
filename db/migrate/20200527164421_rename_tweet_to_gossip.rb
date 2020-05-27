class RenameTweetToGossip < ActiveRecord::Migration[6.0]
  def change
    rename_table :tweets, :gossips
  end
end
