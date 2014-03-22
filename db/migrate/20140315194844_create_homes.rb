class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.text :description
      t.integer :user_id
      t.string :address
      t.string :city
      t.integer :zip_code
      t.date :list_date
      t.integer :list_price

      t.timestamps
    end
    add_index :homes, :address
    add_index :homes, :user_id
    add_index :homes, :city
    add_index :homes, :created_at
  end
end
