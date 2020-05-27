class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :gossips do |t|
      t.text :message

      t.timestamps
    end
  end
end
