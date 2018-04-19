class CreateStarredRepos < ActiveRecord::Migration[5.1]
  def change
    create_table :starred_repos do |t|
      t.integer :user_id, :limit => 8   # bigint
      t.string :full_name
      t.index ["user_id"], name: "index_starred_repos_on_user_id"

      t.timestamps
    end
  end
end
