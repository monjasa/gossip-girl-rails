class AddTagIdToGossips < ActiveRecord::Migration[6.0]
  def change
    add_column :gossips, :tag_id, :integer
  end
end
