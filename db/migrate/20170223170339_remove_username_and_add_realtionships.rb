class RemoveUsernameAndAddRealtionships < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :username, :string
    add_column :users, :name, :string
  end
end
