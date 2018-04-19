class CreateFollowedUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :followed_users do |t|
      t.integer :user_id, :limit => 8   # bigint
      t.string :name
      t.index ["user_id"], name: "index_followed_users_on_user_id"

      t.timestamps
    end
  end
end
