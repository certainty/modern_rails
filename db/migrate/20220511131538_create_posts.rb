class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :message, limit: 250, null: false
      t.integer :likes_count, default: 0, null: false
      t.integer :repost_count, default: 0, null: false
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
