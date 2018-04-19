class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :login
      t.integer :user_id, :limit => 8   # bigint
      t.index ["user_id"], name: "index_organizations_on_user_id"

      t.timestamps
    end
  end
end
