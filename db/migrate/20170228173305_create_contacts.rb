class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.integer :user_id
      t.timestamps
    end
      add_column :messages, :user_id, :integer
      add_column :messages, :contact_id, :integer
      add_column :users, :phone_number, :integer
  end
end
