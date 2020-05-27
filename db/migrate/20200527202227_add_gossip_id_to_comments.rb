class AddGossipIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :gossip_id, :integer
  end
end
