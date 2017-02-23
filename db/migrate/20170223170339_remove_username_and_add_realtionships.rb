class RemoveUsernameAndAddRealtionships < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :username, :string
    add_column :users, :name, :string

    create_table :diets do |d|
      d.string :food
      d.integer :calories
      d.integer :user_id

      d.timestamps
    end

    create_table :exercises do |e|
      e.string :type
      e.integer :calories_burned
      e.integer :user_id

      e.timestamps
    end
  end
end
