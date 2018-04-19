class RenameOauthTokenColumnToToken < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :oauth_token, :token
  end
end
