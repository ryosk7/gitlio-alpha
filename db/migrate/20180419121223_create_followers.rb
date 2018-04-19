class CreateFollowers < ActiveRecord::Migration[5.1]
  def change
    create_table :followers do |t|
      t.integer :user_id, :limit => 8   # bigint
      t.string :name
      t.string :follower_uid
      t.index ["user_id"], name: "index_followers_on_user_id"

      t.timestamps
    end
  end
end
