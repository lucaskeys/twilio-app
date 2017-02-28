class AddMessgageClass < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :to
      t.string :from
      t.string :body
      t.string :status
      t.timestamps
    end
  end
end
