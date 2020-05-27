class AddGossipIdToTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :gossip_id, :integer
  end
end
