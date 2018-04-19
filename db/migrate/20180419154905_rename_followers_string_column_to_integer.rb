class RenameFollowersStringColumnToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :followers, :follower_uid, :integer
  end
end
