class RemoveUserFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :user
  end

  def down
    add_column :users, :user, :string
  end
end
