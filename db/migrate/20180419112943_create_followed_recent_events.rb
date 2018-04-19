class CreateFollowedRecentEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :followed_recent_events do |t|
      t.string :event_type
      t.string :login
      t.string :repo
      t.integer :user_id, :limit => 8   # bigint
      t.index ["user_id"], name: "index_followed_recent_events_on_user_id"

      t.timestamps
    end
  end
end
